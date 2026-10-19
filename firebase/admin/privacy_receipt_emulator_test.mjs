// Explicit demo-only, disposable acceptance test. Never contacts production.
import test from 'node:test';
import assert from 'node:assert/strict';
import { cleanup, GoogleRest } from './privacy_cleanup.mjs';
import { randomBytes } from 'node:crypto';

const enabled = process.env.AIGAMMON_RECEIPT_EMULATOR === '1';
test('anonymous deletion receipt is readable after actual Auth and match erasure',
  { skip: !enabled, timeout: 120000 }, async () => {
    const firestoreHost = process.env.FIRESTORE_EMULATOR_HOST || '127.0.0.1:8080';
    const authHost = process.env.FIREBASE_AUTH_EMULATOR_HOST || '127.0.0.1:9099';
    assert.match(firestoreHost, /^(127\.0\.0\.1|localhost):\d+$/);
    assert.match(authHost, /^(127\.0\.0\.1|localhost):\d+$/);
    const project = 'demo-aigammon';
    const root = `projects/${project}/databases/(default)/documents`;
    const fs = `http://${firestoreHost}/v1/`;
    const auth = `http://${authHost}/identitytoolkit.googleapis.com/v1/`;
    async function json(url, body, token) {
      const response = await fetch(url, { method: 'POST',
        headers: { 'Content-Type': 'application/json', ...(token ? { Authorization: `Bearer ${token}` } : {}) },
        body: JSON.stringify(body) });
      assert.ok(response.ok, `fixture HTTP ${response.status}`);
      return response.json();
    }
    const user = await json(`${auth}accounts:signUp?key=demo`, { returnSecureToken: true });
    const receipt = randomBytes(32).toString('hex');
    const code = randomBytes(4).toString('hex').toUpperCase();
    await json(`${fs}${root}:commit`, { writes: [{ update: {
      name: `${root}/matches/${code}`, fields: {
        hostUid: { stringValue: user.localId }, status: { stringValue: 'waiting' },
        createdAt: { timestampValue: new Date().toISOString() },
      },
    } }] }, 'owner');
    await json(`${fs}${root}:commit`, { writes: [{ update: {
      name: `${root}/privacyRequests/${user.localId}`, fields: {
        status: { stringValue: 'pending' }, receipt: { stringValue: receipt },
      },
    }, updateTransforms: [{ fieldPath: 'requestedAt', setToServerValue: 'REQUEST_TIME' }] }] }, user.idToken);
    const read = () => fetch(`${fs}${root}/deletionReceipts/${receipt}`);
    assert.equal((await read()).status, 404);
    const api = new GoogleRest({ project, token: 'owner', fetcher: (url, options) => {
      const local = url.startsWith('https://firestore.googleapis.com/v1/')
        ? url.replace('https://firestore.googleapis.com/v1/', fs)
        : url.replace('https://identitytoolkit.googleapis.com/v1/', auth);
      assert.ok(local.startsWith(fs) || local.startsWith(auth));
      return fetch(local, options);
    } });
    const result = await cleanup(api, { apply: true, now: new Date() });
    assert.ok(result.accountsDeleted >= 1);
    const response = await read();
    assert.equal(response.status, 200);
    const body = await response.json();
    assert.deepEqual(Object.keys(body.fields).sort(), ['completedAt', 'expiresAt', 'status']);
    assert.equal(body.fields.status.stringValue, 'complete');
    assert.equal((await fetch(`${fs}${root}/matches/${code}`, { headers: { Authorization: 'Bearer owner' } })).status, 404);
    const identities = await json(`${auth}projects/${project}/accounts:lookup`, { localId: [user.localId] }, 'owner');
    assert.ok(!identities.users?.some(value => value.localId === user.localId));
  });
