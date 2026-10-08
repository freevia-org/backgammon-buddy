import test from 'node:test';
import assert from 'node:assert/strict';
import { cleanup, GoogleRest, parseOptions, projectId, ApiError } from './privacy_cleanup.mjs';

const now = new Date('2026-10-09T12:00:00Z');
const root = `projects/${projectId}/databases/(default)/documents`;
const request = { name: `${root}/privacyRequests/user-a`, fields: { status: { stringValue: 'pending' }, requestedAt: { timestampValue: '2026-10-09T10:00:00Z' } } };
const match = { name: `${root}/matches/ABCDEFGH` };

function fakeApi({ requests = [request], failDelete = false } = {}) {
  const calls = [];
  let removed = false;
  return {
    root, calls,
    async query(collection, field, op, value) {
      calls.push(['query', collection, field, op, value]);
      if (collection === 'privacyRequests') return field === 'status' ? requests : [];
      if (field === 'hostUid' && !removed) return [match];
      return [];
    },
    async disableUser(uid) { calls.push(['disable', uid]); },
    async deleteMatch(doc) { calls.push(['deleteMatch', doc.name]); if (failDelete) throw new Error('failure'); removed = true; return 4; },
    async deleteUser(uid) { calls.push(['deleteUser', uid]); },
    async patch(name, fields) { calls.push(['patch', name, fields]); },
    async deleteDocuments(names) { calls.push(['deleteDocuments', names]); },
  };
}

test('production requires explicit approved project, confirmation and token', () => {
  const env = { GOOGLE_OAUTH_ACCESS_TOKEN: 'test' };
  assert.equal(parseOptions(['--project', projectId], env).apply, false);
  assert.throws(() => parseOptions(['--project', 'unrelated'], env));
  assert.throws(() => parseOptions(['--project', projectId, '--uid', 'victim'], env));
  assert.throws(() => parseOptions(['--project', projectId, '--apply'], env));
  assert.throws(() => parseOptions(['--project', projectId], { ...env, FIRESTORE_EMULATOR_HOST: 'localhost:8080' }));
  assert.equal(parseOptions(['--project', projectId, '--apply', '--confirm-project', projectId], env).apply, true);
});

test('default dry-run performs only reads and emits counts without identities', async () => {
  const api = fakeApi();
  const result = await cleanup(api, { now });
  assert.ok(api.calls.every(call => call[0] === 'query'));
  assert.equal(result.matches, 1);
  assert.equal(result.accountsDeleted, 0);
  assert.ok(!JSON.stringify(result).includes('user-a'));
  assert.ok(!JSON.stringify(result).includes('ABCDEFGH'));
});

test('verified request disables auth, removes owned matches, deletes identity, then marks complete', async () => {
  const api = fakeApi();
  const result = await cleanup(api, { now, apply: true });
  const writes = api.calls.filter(call => call[0] !== 'query');
  assert.deepEqual(writes.map(call => call[0]), ['disable', 'deleteMatch', 'deleteUser', 'patch']);
  assert.equal(writes[3][2].status.stringValue, 'complete');
  assert.equal(result.documentsDeleted, 4);
  assert.equal(result.accountsDeleted, 1);
  const expiry = api.calls.find(call => call[2] === 'createdAt');
  assert.deepEqual(expiry.slice(3), ['LESS_THAN_OR_EQUAL', { timestampValue: '2026-09-09T12:00:00.000Z' }]);
});

test('partial purge failure leaves request pending and identity disabled for retry', async () => {
  const api = fakeApi({ failDelete: true });
  await assert.rejects(cleanup(api, { now, apply: true }));
  assert.ok(api.calls.some(call => call[0] === 'disable'));
  assert.ok(!api.calls.some(call => call[0] === 'deleteUser' || call[0] === 'patch'));
});

test('malformed/untrusted request cannot select arbitrary auth user', async () => {
  for (const bad of [
    { ...request, name: `${root}/privacyRequests/nested/victim` },
    { ...request, name: 'projects/other/databases/(default)/documents/privacyRequests/victim' },
    { ...request, fields: { ...request.fields, requestedAt: { timestampValue: '2040-01-01T00:00:00Z' } } },
    { ...request, fields: { ...request.fields, status: { stringValue: 'complete' } } },
  ]) {
    const api = fakeApi({ requests: [bad] });
    await assert.rejects(cleanup(api, { now, apply: true }));
    assert.ok(api.calls.every(call => call[0] === 'query'));
  }
});

test('REST recursive match removal freezes before deleting children, parent last', async () => {
  const calls = [];
  let childrenRead = false;
  const api = new GoogleRest({ project: projectId, token: 'secret', fetcher: async (url, options) => {
    const body = options.body ? JSON.parse(options.body) : null;
    calls.push({ url, method: options.method, body });
    let response = options.method === 'PATCH' ? { updateTime: now.toISOString() } : {};
    if (url.includes(':listCollectionIds')) response = { collectionIds: ['events', 'rolls'] };
    if (url.includes('/events?') && !childrenRead) { childrenRead = true; response = { documents: [{ name: `${match.name}/events/00000000` }] }; }
    return new Response(JSON.stringify(response), { status: 200 });
  } });
  assert.equal(await api.deleteMatch(match, now), 2);
  assert.equal(calls[0].method, 'PATCH');
  const deletes = calls.filter(call => call.url.includes(':commit')).map(call => call.body.writes);
  assert.deepEqual(deletes, [[{ delete: `${match.name}/events/00000000` }], [{ delete: match.name, currentDocument: { updateTime: now.toISOString() } }]]);
  assert.ok(calls[0].url.includes('currentDocument.exists=true'));
});

test('REST refuses unexpected child collections and keeps frozen parent', async () => {
  let commits = 0;
  const api = new GoogleRest({ project: projectId, token: 'secret', fetcher: async url => {
    if (url.includes(':commit')) commits++;
    return new Response(JSON.stringify(url.includes(':listCollectionIds') ? { collectionIds: ['unknown'] } : { updateTime: now.toISOString() }), { status: 200 });
  } });
  await assert.rejects(api.deleteMatch(match, now), /Unexpected/);
  assert.equal(commits, 0);
});

test('legacy arbitrary match IDs cannot poison cleanup or alter REST query paths', async () => {
  const calls = [];
  const api = new GoogleRest({ project: projectId, token: 'secret', fetcher: async (url, options) => {
    calls.push({ url, body: options.body ? JSON.parse(options.body) : null });
    return new Response(JSON.stringify({ updateTime: now.toISOString() }), { status: 200 });
  } });
  const unusual = { name: `${root}/matches/legacy?mask=evil#id` };
  assert.equal(await api.deleteMatch(unusual, now), 1);
  assert.ok(calls[0].url.includes('/matches/legacy%3Fmask%3Devil%23id?'));
  assert.deepEqual(calls.at(-1).body.writes, [{ delete: unusual.name, currentDocument: { updateTime: now.toISOString() } }]);
  await assert.rejects(api.deleteMatch({ name: `${root}/matches/nested/events/x` }, now));
});

test('lost delete response cannot erase a newly reused invite code on retry', async () => {
  let commits = 0;
  const api = new GoogleRest({ project: projectId, token: 'secret', fetcher: async (url, options) => {
    if (options.method === 'PATCH') return new Response(JSON.stringify({ updateTime: now.toISOString() }));
    if (url.includes(':commit')) {
      commits++;
      const body = JSON.parse(options.body);
      assert.equal(body.writes[0].currentDocument.updateTime, now.toISOString());
      // The first delete succeeded server-side but its response was lost;
      // another identity then claims the code before the retried commit.
      return new Response('{}', { status: commits === 1 ? 503 : 400 });
    }
    return new Response('{}');
  } });
  await assert.rejects(api.deleteMatch(match, now), ApiError);
  assert.equal(commits, 2);
});

test('request arriving during first query is not rejected by the run-start clock', async () => {
  const api = fakeApi({ requests: [{ ...request, fields: { ...request.fields, requestedAt: { timestampValue: new Date(now.getTime() + 1000).toISOString() } } }] });
  const result = await cleanup(api, { now, apply: true });
  assert.equal(result.accountsDeleted, 1);
});

test('Auth USER_NOT_FOUND is idempotent, unrelated errors remain failures', async () => {
  const api = new GoogleRest({ project: projectId, token: 'secret', fetcher: async () => new Response(JSON.stringify({ error: { message: 'USER_NOT_FOUND' } }), { status: 400 }) });
  await api.disableUser('test');
  await api.deleteUser('test');
  api.fetcher = async () => new Response(JSON.stringify({ error: { message: 'PRIVATE DATA MUST NOT BE LOGGED' } }), { status: 403 });
  await assert.rejects(api.deleteUser('test'), error => error instanceof ApiError && !error.message.includes('PRIVATE'));
});

test('completed deny marker is retained for at least 24 hours', async () => {
  const api = fakeApi({ requests: [] });
  await cleanup(api, { now, apply: true });
  const markerQuery = api.calls.find(call => call[2] === 'completedAt');
  assert.deepEqual(markerQuery[4], { timestampValue: '2026-10-08T12:00:00.000Z' });
});
