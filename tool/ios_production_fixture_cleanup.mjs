// Manual production acceptance coordinator. Never sweeps existing user data.
// Requires an already-authorized Firebase CLI and a private simulator fixture.
import {createRequire} from 'node:module';
import {readFile, unlink} from 'node:fs/promises';
import assert from 'node:assert/strict';
import {resolve} from 'node:path';
import {GoogleRest, cleanup} from '../firebase/admin/privacy_cleanup.mjs';

const args = process.argv.slice(2);
assert.equal(args.length, 3, 'Use --apply-fixture PRIVATE_FIXTURE_PATH FIREBASE_TOOLS_DIRECTORY');
assert.equal(args[0], '--apply-fixture');
const fixturePath = resolve(args[1]);
assert.ok(fixturePath.endsWith('/Documents/production-validation.json'));
const require = createRequire(import.meta.url);
const auth = require(resolve(args[2], 'lib/auth.js'));
const sleep = ms => new Promise(resolve => setTimeout(resolve, ms));
const deadline = Date.now() + 8 * 60_000;
let fixture;
while (Date.now() < deadline) {
  try {
    const candidate = JSON.parse(await readFile(fixturePath, 'utf8'));
    if (candidate.ready) {fixture = candidate; break;}
  } catch (error) {
    if (error.code !== 'ENOENT' && !(error instanceof SyntaxError)) throw error;
  }
  await sleep(1000);
}
assert.ok(fixture, 'No ready fixture; inspect the private simulator file before cleanup');
assert.equal(fixture.project, 'backgammon-buddy-freevia');
assert.equal(fixture.uids.length, 2);
assert.equal(new Set(fixture.uids).size, 2);
assert.equal(fixture.receipts.length, 2);
assert.ok(fixture.uids.every(uid => /^[A-Za-z0-9]{20,128}$/.test(uid)));
assert.ok(fixture.receipts.every(receipt => /^[a-f0-9]{64}$/.test(receipt)));
assert.match(fixture.code, /^[ABCDEFGHJKLMNPQRSTUVWXYZ23456789]{8}$/);
assert.ok(Math.abs(Date.now() - Date.parse(fixture.createdAt)) < 15 * 60_000);
const account = auth.getGlobalDefaultAccount();
assert.equal(account?.user.email, 'info@freevia.org', 'Use the approved project operator account');
const credentials = await auth.getAccessToken(account.tokens.refresh_token,
  ['https://www.googleapis.com/auth/cloud-platform', 'https://www.googleapis.com/auth/firebase']);
const api = new GoogleRest({project: fixture.project, token: credentials.access_token});
const identities = await api.request('auth', `projects/${fixture.project}/accounts:lookup`,
  'POST', {localId: fixture.uids});
assert.equal(identities.users?.length, 2);
for (const user of identities.users) {
  assert.ok(fixture.uids.includes(user.localId));
  assert.ok(Number.isFinite(Number(user.createdAt)) &&
    Math.abs(Date.now() - Number(user.createdAt)) < 15 * 60_000,
    'Refusing an identity not newly created in this test window');
  assert.ok(!user.email && !user.phoneNumber && !user.providerUserInfo?.length,
    'Refusing a non-anonymous identity');
}
const root = api.root;
const matchName = `${root}/matches/${fixture.code}`;
const match = await api.request('firestore', matchName);
assert.equal(match.fields.hostUid.stringValue, fixture.uids[0]);
assert.equal(match.fields.guestUid.stringValue, fixture.uids[1]);
const originalQuery = api.query.bind(api);
api.query = async (collection, field, op, value) => {
  if (collection === 'privacyRequests' && field === 'status') {
    return Promise.all(fixture.uids.map(async (uid, i) => {
      const doc = await api.request('firestore', `${root}/privacyRequests/${uid}`);
      assert.equal(doc.fields.receipt.stringValue, fixture.receipts[i]);
      return doc;
    }));
  }
  if (collection === 'matches' && ['hostUid', 'guestUid'].includes(field)) {
    assert.ok(fixture.uids.includes(value.stringValue));
    const docs = await originalQuery(collection, field, op, value);
    assert.ok(docs.every(doc => doc.name === matchName), 'Unexpected match; refusing deletion');
    return docs;
  }
  return []; // No retention sweep, other users, deny markers or other receipts.
};
const result = await cleanup(api, {apply: true});
assert.equal(result.accountsDeleted, 2);
const users = await api.request('auth', `projects/${fixture.project}/accounts:lookup`, 'POST', {localId: fixture.uids});
assert.equal(users.users?.length ?? 0, 0);
console.log('PASS: only the two disposable identities and their match tree erased; both receipt completions published.');
// Wait until the native client has read both receipts without an Auth token.
let acknowledged = false;
for (let i = 0; i < 180; i++) {
  try {
    const saved = JSON.parse(await readFile(fixturePath, 'utf8'));
    if (saved.confirmed === true && saved.code === fixture.code &&
        JSON.stringify(saved.uids) === JSON.stringify(fixture.uids)) {
      acknowledged = true;
      break;
    }
    await sleep(1000);
  } catch (error) {
    // Uninstallation or a crash can remove the container; absence is NOT proof.
    if (error.code === 'ENOENT') break;
    if (error instanceof SyntaxError) {await sleep(1000); continue;}
    throw error;
  }
}
await api.deleteDocuments(fixture.uids.map(uid => `${root}/privacyRequests/${uid}`)
  .concat(fixture.receipts.map(receipt => `${root}/deletionReceipts/${receipt}`)));
assert.ok(acknowledged, 'Native receipt check was not explicitly acknowledged; fixtures erased');
await unlink(fixturePath);
console.log('PASS: native client explicitly acknowledged both receipts; disposable receipt/marker records removed.');
