#!/usr/bin/env node
// No service-account keys or SDK dependency: the workflow supplies a short-lived
// impersonated service-account OAuth token. Default mode is read-only.
import { pathToFileURL } from 'node:url';

export const projectId = 'backgammon-buddy-freevia';
export const retentionDays = 30;
const day = 24 * 60 * 60 * 1000;
const batchSize = 200;

export function parseOptions(args, env = process.env) {
  const result = { apply: false, project: undefined, confirmProject: undefined };
  for (let i = 0; i < args.length; i++) {
    const arg = args[i];
    if (arg === '--apply') result.apply = true;
    else if (arg === '--project') result.project = args[++i];
    else if (arg === '--confirm-project') result.confirmProject = args[++i];
    else throw new Error('Unknown argument. Use --project, --apply and --confirm-project.');
  }
  if (result.project !== projectId) throw new Error('Explicit approved production --project is required.');
  if (result.apply && result.confirmProject !== result.project) {
    throw new Error('Applying requires --confirm-project matching --project.');
  }
  if (env.FIRESTORE_EMULATOR_HOST || env.FIREBASE_AUTH_EMULATOR_HOST) {
    throw new Error('Production cleanup refuses emulator environment variables.');
  }
  if (!env.GOOGLE_OAUTH_ACCESS_TOKEN) throw new Error('GOOGLE_OAUTH_ACCESS_TOKEN is required.');
  return result;
}

/** Errors expose status/categories only, never response bodies, UID or tokens. */
export class ApiError extends Error {
  constructor(status, missingUser = false) {
    super(`Administrative API request failed (HTTP ${status}).`);
    this.status = status;
    this.missingUser = missingUser;
  }
}

export class GoogleRest {
  constructor({ project, token, fetcher = fetch }) {
    this.project = project;
    this.token = token;
    this.fetcher = fetcher;
    this.root = `projects/${project}/databases/(default)/documents`;
  }

  async request(service, path, method = 'GET', body) {
    const base = service === 'auth' ? 'https://identitytoolkit.googleapis.com/v1/'
      : 'https://firestore.googleapis.com/v1/';
    for (let attempt = 0; ; attempt++) {
      const response = await this.fetcher(base + path, {
        method,
        headers: { Authorization: `Bearer ${this.token}`, 'Content-Type': 'application/json' },
        body: body === undefined ? undefined : JSON.stringify(body),
        signal: AbortSignal.timeout(30000),
      });
      const data = await response.json().catch(() => ({}));
      if (response.ok) return data;
      if (attempt < 3 && (response.status === 429 || response.status >= 500)) {
        await new Promise(resolve => setTimeout(resolve, 500 * 2 ** attempt));
        continue;
      }
      throw new ApiError(response.status, data.error?.message === 'USER_NOT_FOUND');
    }
  }

  async query(collectionId, field, op, value) {
    const rows = await this.request('firestore', `${this.root}:runQuery`, 'POST', {
      structuredQuery: {
        from: [{ collectionId }],
        where: { fieldFilter: { field: { fieldPath: field }, op, value } },
        limit: batchSize,
      },
    });
    return rows.filter(row => row.document).map(row => row.document);
  }

  async patch(name, fields) {
    this.assertName(name);
    const params = new URLSearchParams({ 'currentDocument.exists': 'true' });
    for (const key of Object.keys(fields)) params.append('updateMask.fieldPaths', key);
    return this.request('firestore', `${this.documentPath(name)}?${params}`, 'PATCH', { fields });
  }

  assertName(name) {
    if (typeof name !== 'string' || !name.startsWith(`${this.root}/`)) {
      throw new Error('Refusing document outside the selected project/database.');
    }
  }

  documentPath(name) {
    this.assertName(name);
    return name.split('/').map(encodeURIComponent).join('/');
  }

  async deleteDocuments(names, updateTime) {
    for (const name of names) this.assertName(name);
    if (!names.length) return;
    await this.request('firestore', `projects/${this.project}/databases/(default)/documents:commit`, 'POST', {
      writes: names.map(name => ({ delete: name, ...(updateTime ? { currentDocument: { updateTime } } : {}) })),
    });
  }

  async deleteMatch(document, now) {
    const name = document.name;
    this.assertName(name);
    const relative = name.slice(this.root.length + 1).split('/');
    if (relative.length !== 2 || relative[0] !== 'matches' || !relative[1]) {
      throw new Error('Refusing malformed match document path.');
    }
    // Freeze first; retries leave this marker in place until every child is gone.
    const frozen = await this.patch(name, { deletingAt: { timestampValue: now.toISOString() } });
    if (!validTime(frozen.updateTime)) throw new Error('Missing frozen match version; refusing unguarded deletion.');
    let pageToken;
    do {
      const page = await this.request('firestore', `${this.documentPath(name)}:listCollectionIds`, 'POST', { pageSize: batchSize, ...(pageToken ? { pageToken } : {}) });
      if ((page.collectionIds || []).some(id => id !== 'events' && id !== 'rolls')) {
        throw new Error('Unexpected match subcollection: match remains frozen for operator review.');
      }
      pageToken = page.nextPageToken;
    } while (pageToken);
    let deleted = 0;
    for (const child of ['events', 'rolls']) {
      // Start at the first remaining page after each atomic batch. Deleting a
      // parent does not cascade in Firestore; the parent is deliberately last.
      for (let pages = 0; ; pages++) {
        if (pages >= 100) throw new Error('Match exceeds documented log bounds; remains frozen.');
        const page = await this.request('firestore', `${this.documentPath(name)}/${child}?pageSize=${batchSize}&mask.fieldPaths=__name__`);
        const docs = page.documents || [];
        if (!docs.length) break;
        await this.deleteDocuments(docs.map(doc => doc.name));
        deleted += docs.length;
      }
    }
    try {
      // Pin the frozen version. A lost success response may trigger a retry
      // after another player reuses this invite code; that new match is not ours.
      await this.deleteDocuments([name], frozen.updateTime);
    } catch (error) {
      if (error instanceof ApiError && [400, 404, 409, 412].includes(error.status)) {
        try {
          await this.request('firestore', this.documentPath(name));
        } catch (readError) {
          if (readError instanceof ApiError && readError.status === 404) return deleted + 1;
          throw readError;
        }
      }
      throw error;
    }
    return deleted + 1;
  }

  async disableUser(uid) {
    try {
      await this.request('auth', `projects/${this.project}/accounts:update`, 'POST', { localId: uid, disableUser: true });
    } catch (error) {
      if (!(error instanceof ApiError && error.missingUser)) throw error;
    }
  }

  async deleteUser(uid) {
    try {
      await this.request('auth', `projects/${this.project}/accounts:delete`, 'POST', { localId: uid });
    } catch (error) {
      if (!(error instanceof ApiError && error.missingUser)) throw error;
    }
  }
}

function field(doc, key, type) { return doc.fields?.[key]?.[type]; }
function validTime(value) { return typeof value === 'string' && Number.isFinite(Date.parse(value)); }

/** One bounded run. The next hourly run resumes remaining work after failures. */
export async function cleanup(api, { apply = false, now = new Date() } = {}) {
  const summary = { mode: apply ? 'apply' : 'dry-run', requests: 0, overdueRequests: 0, matches: 0, documentsDeleted: 0, accountsDeleted: 0, requestMarkersDeleted: 0, moreWork: false };
  const cutoff = new Date(now.getTime() - retentionDays * day).toISOString();
  const seen = new Set();
  async function removeMatches(fieldName, op, value) {
    for (let pages = 0; pages < 5; pages++) {
      const matches = await api.query('matches', fieldName, op, value);
      for (const match of matches) {
        if (seen.has(match.name)) continue;
        seen.add(match.name);
        summary.matches++;
        if (apply) summary.documentsDeleted += await api.deleteMatch(match, now);
      }
      if (matches.length < batchSize) return true;
      if (!apply) { summary.moreWork = true; return false; }
    }
    summary.moreWork = true;
    return false;
  }

  const requests = await api.query('privacyRequests', 'status', 'EQUAL', { stringValue: 'pending' });
  summary.moreWork = requests.length === batchSize;
  for (const request of requests) {
    const uid = request.name.split('/').at(-1);
    if (!uid || uid.length > 128 || !request.name.startsWith(`${api.root}/privacyRequests/`)
      || request.name !== `${api.root}/privacyRequests/${uid}`
      || field(request, 'status', 'stringValue') !== 'pending'
      || !validTime(field(request, 'requestedAt', 'timestampValue'))
      // A request may arrive while this run's first query is in flight.
      || Date.parse(field(request, 'requestedAt', 'timestampValue')) > now.getTime() + 5 * 60 * 1000) {
      throw new Error('Invalid deletion request; refusing to select an identity.');
    }
    summary.requests++;
    if (Date.parse(field(request, 'requestedAt', 'timestampValue')) < Date.parse(cutoff)) summary.overdueRequests++;
    // Rules deny both requester writes and peer writes to related matches from
    // request creation onward. Disable refresh/sign-in too before erasing data.
    if (apply) await api.disableUser(uid);
    const hosted = await removeMatches('hostUid', 'EQUAL', { stringValue: uid });
    const joined = await removeMatches('guestUid', 'EQUAL', { stringValue: uid });
    if (apply && hosted && joined) {
      await api.deleteUser(uid);
      summary.accountsDeleted++;
      // Keep a short deny marker after Auth deletion: already-issued ID tokens
      // can remain valid for an hour. No email, credentials or game data remain.
      await api.patch(request.name, { status: { stringValue: 'complete' }, completedAt: { timestampValue: now.toISOString() } });
    }
  }
  await removeMatches('createdAt', 'LESS_THAN_OR_EQUAL', { timestampValue: cutoff });
  const markers = await api.query('privacyRequests', 'completedAt', 'LESS_THAN_OR_EQUAL', { timestampValue: new Date(now.getTime() - day).toISOString() });
  if (markers.length === batchSize) summary.moreWork = true;
  for (const marker of markers) {
    if (field(marker, 'status', 'stringValue') !== 'complete') throw new Error('Unexpected completed request state.');
    if (apply) {
      await api.deleteDocuments([marker.name]);
      summary.requestMarkersDeleted++;
    }
  }
  return summary;
}

async function main() {
  const options = parseOptions(process.argv.slice(2));
  const api = new GoogleRest({ project: options.project, token: process.env.GOOGLE_OAUTH_ACCESS_TOKEN });
  const summary = await cleanup(api, options);
  console.log(JSON.stringify(summary));
  if (summary.overdueRequests || summary.moreWork) process.exitCode = 2;
}

if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
  main().catch(error => {
    // Network errors can carry URLs. Log only our bounded messages/categories.
    const safe = error instanceof ApiError ? error.message : 'Privacy cleanup failed; inspect access, quotas and request integrity. No success is implied.';
    console.error(safe);
    process.exitCode = 1;
  });
}
