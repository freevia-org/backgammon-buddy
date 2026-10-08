import { test } from 'node:test';
import assert from 'node:assert/strict';
import { boundedJson, evaluate, observe, readState, runMonitor, workflowPath } from '../src/monitor.ts';
import worker from '../src/index.ts';

const now = Date.parse('2026-10-09T12:00:00Z');
const ago = minutes => new Date(now - minutes * 60000).toISOString();
const metadata = { id: 42, path: workflowPath, state: 'active' };
const run = (changes = {}) => ({ id: 99, workflow_id: 42, event: 'schedule',
  head_branch: 'master', status: 'completed', conclusion: 'success',
  updated_at: ago(30), repository: { id: 1410906868 }, ...changes });
const payload = (...runs) => ({ workflow_runs: runs });
const fetcher = (runs, info = metadata) => async url => Response.json(url.includes('/runs?') ? runs : info);

function environment(enabled = true) {
  let stored = null;
  const sent = [];
  return {
    ALERTS_ENABLED: String(enabled), ALERT_FROM: 'privacy-monitor@freevia.org',
    STATE: { get: async () => stored, put: async (_key, data) => { stored = JSON.parse(data); } },
    ALERT_EMAIL: { send: async email => { sent.push(email); return { messageId: 'test-local' }; } },
    sent, state: () => stored,
  };
}

test('only completed scheduled runs of the exact repo/workflow/master establish health', () => {
  assert.equal(evaluate(metadata, payload(run()), now).status, 'healthy');
  for (const changes of [
    { event: 'workflow_dispatch' }, { workflow_id: 43 }, { repository: { id: 1 } },
    { head_branch: 'feature' }, { status: 'in_progress', conclusion: null },
    { updated_at: ago(-6) }, { updated_at: 'invalid' }, { id: -1 },
  ]) assert.equal(evaluate(metadata, payload(run(changes)), now).status, 'overdue');
});

test('two-hour boundary, no runs, latest failure and disabled workflow', () => {
  assert.equal(evaluate(metadata, payload(), now).status, 'overdue');
  assert.equal(evaluate(metadata, payload(run({ updated_at: ago(119) })), now).status, 'healthy');
  assert.equal(evaluate(metadata, payload(run({ updated_at: ago(120) })), now).status, 'overdue');
  assert.equal(evaluate(metadata, payload(run(), run({ id: 100, conclusion: 'failure', updated_at: ago(1) })), now).status, 'failed');
  assert.equal(evaluate({ ...metadata, state: 'disabled_inactivity' }, payload(run()), now).status, 'disabled');
  assert.equal(evaluate(metadata, payload(run(), run({ updated_at: ago(60), conclusion: 'cancelled' })), now).status, 'healthy');
});

test('a manual successful dry-run cannot mask overdue or failed scheduled cleanup', () => {
  const manual = run({ event: 'workflow_dispatch', updated_at: ago(1) });
  assert.equal(evaluate(metadata, payload(manual, run({ updated_at: ago(121) })), now).status, 'overdue');
  assert.equal(evaluate(metadata, payload(manual, run({ conclusion: 'failure' })), now).status, 'failed');
});

test('public API requests are fixed and credential-free; invalid data is unknown health', async () => {
  const requests = [];
  const result = await observe(now, async (url, options) => {
    requests.push({ url, options });
    return Response.json(url.includes('/runs?') ? payload(run()) : metadata);
  });
  assert.equal(result.status, 'healthy');
  assert.equal(requests.length, 2);
  assert.ok(requests.every(({ url }) => url.startsWith('https://api.github.com/repos/freevia-org/backgammon-buddy/actions/workflows/privacy-cleanup.yml')));
  assert.ok(requests.every(({ options }) => !('Authorization' in options.headers) && options.redirect === 'error'));
  for (const request of [async () => new Response('', { status: 403 }), async () => Response.json({}), async () => { throw new Error('upstream private diagnostic'); }]) {
    assert.deepEqual(await observe(now, request), { status: 'github_unavailable', checkedAt: new Date(now).toISOString(), lastSuccessAt: null, runUrl: null });
  }
});

test('response byte limit and malformed JSON are rejected', async () => {
  await assert.rejects(boundedJson(new Response('x'.repeat(512 * 1024 + 1))), /exceeds limit/);
  await assert.rejects(boundedJson(new Response('not json')));
  assert.deepEqual(await boundedJson(Response.json({ ok: true })), { ok: true });
});

test('dedup suppresses unchanged state, sends daily reminder and one recovery', async () => {
  const env = environment();
  assert.equal((await runMonitor(env, now, fetcher(payload()))).notified, true);
  assert.equal((await runMonitor(env, now + 3600000, fetcher(payload()))).notified, false);
  assert.equal((await runMonitor(env, now + 24 * 3600000, fetcher(payload()))).notified, true);
  const recoveredAt = now + 25 * 3600000;
  const recovered = payload(run({ updated_at: new Date(recoveredAt).toISOString() }));
  assert.equal((await runMonitor(env, recoveredAt, fetcher(recovered))).notified, true);
  assert.equal((await runMonitor(env, recoveredAt + 1000, fetcher(recovered))).notified, false);
  assert.equal(env.sent.length, 3);
  assert.ok(env.sent.every(email => email.to === 'info@freevia.org'));
  assert.match(env.sent[2].subject, /recovered/);
});

test('healthy initial status is quiet; disabled alert flag does not claim delivery', async () => {
  const healthy = environment();
  assert.equal((await runMonitor(healthy, now, fetcher(payload(run())))).notified, false);
  const env = environment(false);
  await runMonitor(env, now, fetcher(payload()));
  assert.equal(env.sent.length, 0);
  assert.equal(env.state().notifiedStatus, null);
  env.ALERTS_ENABLED = 'true';
  assert.equal((await runMonitor(env, now + 1000, fetcher(payload()))).notified, true);
});

test('delivery failure preserves old state for retry; persistence failure surfaces', async () => {
  const env = environment();
  const send = env.ALERT_EMAIL.send;
  env.ALERT_EMAIL.send = async () => { throw new Error('mail rejected'); };
  await assert.rejects(runMonitor(env, now, fetcher(payload())), /mail rejected/);
  assert.equal(env.state(), null);
  env.ALERT_EMAIL.send = send;
  assert.equal((await runMonitor(env, now, fetcher(payload()))).notified, true);
  env.STATE.put = async () => { throw new Error('state unavailable'); };
  await assert.rejects(runMonitor(env, now, fetcher(payload())), /state unavailable/);
});

test('corrupt stored state cannot suppress alerts; HTTP route cannot send mail', async () => {
  assert.equal(readState({ status: 'healthy' }), null);
  assert.equal(readState({ status: 'overdue', checkedAt: ago(1), lastSuccessAt: null,
    runUrl: 'https://evil.example', notifiedStatus: 'overdue', lastNotifiedAt: ago(1) }), null);
  const env = environment();
  assert.equal((await worker.fetch(new Request('https://example.test/send'), env, {})).status, 404);
  assert.equal(env.sent.length, 0);
});
