export const repository = 'freevia-org/backgammon-buddy';
export const workflow = 'privacy-cleanup.yml';
export const workflowPath = `.github/workflows/${workflow}`;
export const workflowUrl = `https://github.com/${repository}/actions/workflows/${workflow}`;
const apiRoot = `https://api.github.com/repos/${repository}/actions/workflows/${workflow}`;
const hour = 60 * 60 * 1000;
const stateKey = 'privacy-cleanup-v1';

type Status = 'healthy' | 'overdue' | 'failed' | 'disabled' | 'github_unavailable';
export interface Observation {
  status: Status;
  checkedAt: string;
  lastSuccessAt: string | null;
  runUrl: string | null;
}
interface StoredState extends Observation {
  notifiedStatus: Status | null;
  lastNotifiedAt: string | null;
}
interface WorkflowRun {
  id: number;
  workflow_id: number;
  event: string;
  head_branch: string;
  status: string;
  conclusion: string | null;
  updated_at: string;
  repository: { id: number };
}

function object(value: unknown): Record<string, unknown> | null {
  return value !== null && typeof value === 'object' && !Array.isArray(value)
    ? value as Record<string, unknown> : null;
}
function timestamp(value: unknown): number | null {
  if (typeof value !== 'string') return null;
  const result = Date.parse(value);
  return Number.isFinite(result) ? result : null;
}
function isStatus(value: unknown): value is Status {
  return ['healthy', 'overdue', 'failed', 'disabled', 'github_unavailable'].includes(String(value));
}

/** Only exact scheduled runs from this workflow/repository can establish health. */
export function evaluate(metadata: unknown, payload: unknown, now: number): Observation {
  const info = object(metadata);
  const data = object(payload);
  if (!info || info.path !== workflowPath || typeof info.id !== 'number'
    || !data || !Array.isArray(data.workflow_runs) || typeof info.state !== 'string') {
    throw new Error('Invalid GitHub workflow response');
  }
  const relevant = data.workflow_runs.filter((value): value is WorkflowRun => {
    const run = object(value);
    const date = timestamp(run?.updated_at);
    return run !== null && Number.isSafeInteger(run.id) && (run.id as number) > 0
      && run.workflow_id === info.id && run.event === 'schedule'
      && run.head_branch === 'master' && object(run.repository)?.id === 1410906868
      && run.status === 'completed' && typeof run.conclusion === 'string'
      && date !== null && date <= now + 5 * 60 * 1000;
  }).sort((left, right) => Date.parse(right.updated_at) - Date.parse(left.updated_at));
  const successful = relevant.find(run => run.conclusion === 'success');
  const latest = relevant[0];
  const result: Observation = {
    status: 'healthy', checkedAt: new Date(now).toISOString(),
    lastSuccessAt: successful?.updated_at ?? null,
    runUrl: latest ? `https://github.com/${repository}/actions/runs/${latest.id}` : null,
  };
  if (info.state !== 'active') result.status = 'disabled';
  else if (latest && latest.conclusion !== 'success') result.status = 'failed';
  else if (!successful || now - Date.parse(successful.updated_at) >= 2 * hour) result.status = 'overdue';
  return result;
}

/** Response streaming is bounded even if an upstream error serves a huge body. */
export async function boundedJson(response: Response): Promise<unknown> {
  if (!response.ok || !response.body) throw new Error('GitHub status unavailable');
  const reader = response.body.getReader();
  const decoder = new TextDecoder();
  let bytes = 0;
  let text = '';
  try {
    for (;;) {
      const { done, value } = await reader.read();
      if (done) break;
      bytes += value.byteLength;
      if (bytes > 512 * 1024) { await reader.cancel(); throw new Error('GitHub response exceeds limit'); }
      text += decoder.decode(value, { stream: true });
    }
    text += decoder.decode();
    return JSON.parse(text) as unknown;
  } finally { reader.releaseLock(); }
}

export async function observe(now: number, fetcher: typeof fetch = fetch): Promise<Observation> {
  try {
    const request = async (url: string) => boundedJson(await fetcher(url, {
      headers: {
        Accept: 'application/vnd.github+json',
        'User-Agent': 'Freevia-Backgammon-Buddy-Privacy-Monitor',
        'X-GitHub-Api-Version': '2022-11-28',
        'Cache-Control': 'no-cache',
      },
      redirect: 'error', signal: AbortSignal.timeout(15000),
    }));
    const [metadata, runs] = await Promise.all([
      request(apiRoot),
      request(`${apiRoot}/runs?event=schedule&branch=master&per_page=10`),
    ]);
    return evaluate(metadata, runs, now);
  } catch (_) {
    // No raw upstream text, usernames, response bodies or credentials in logs.
    return { status: 'github_unavailable', checkedAt: new Date(now).toISOString(), lastSuccessAt: null, runUrl: null };
  }
}

export function readState(raw: unknown): StoredState | null {
  const data = object(raw);
  if (!data || !isStatus(data.status) || timestamp(data.checkedAt) === null
    || typeof data.checkedAt !== 'string'
    || !(data.lastSuccessAt === null || (typeof data.lastSuccessAt === 'string' && timestamp(data.lastSuccessAt) !== null))
    || !(data.runUrl === null || (typeof data.runUrl === 'string' && /^https:\/\/github\.com\/freevia-org\/backgammon-buddy\/actions\/runs\/\d+$/.test(data.runUrl)))
    || !(data.notifiedStatus === null || isStatus(data.notifiedStatus))
    || !(data.lastNotifiedAt === null || (typeof data.lastNotifiedAt === 'string' && timestamp(data.lastNotifiedAt) !== null))) return null;
  return {
    status: data.status, checkedAt: data.checkedAt, lastSuccessAt: data.lastSuccessAt,
    runUrl: data.runUrl, notifiedStatus: data.notifiedStatus, lastNotifiedAt: data.lastNotifiedAt,
  };
}

export function shouldNotify(observation: Observation, previous: StoredState | null, now: number): boolean {
  if (!previous?.notifiedStatus) return observation.status !== 'healthy';
  if (observation.status !== previous.notifiedStatus) return true;
  return observation.status !== 'healthy' && previous.lastNotifiedAt !== null
    && now - Date.parse(previous.lastNotifiedAt) >= 24 * hour;
}

const descriptions: Record<Status, string> = {
  healthy: 'Scheduled cleanup has recovered and completed successfully within the last two hours.',
  overdue: 'No successful scheduled cleanup has been observed in the last two hours.',
  failed: 'The latest completed scheduled cleanup did not succeed.',
  disabled: 'The cleanup workflow is disabled or inactive.',
  github_unavailable: 'The monitor could not verify GitHub workflow status. This is unknown health, not a successful cleanup.',
};

export function emailFor(observation: Observation, sender: string) {
  // Fixed recipient and plain text only. No content from game records is read.
  const text = [
    'Backgammon Buddy privacy cleanup', descriptions[observation.status],
    `Checked: ${observation.checkedAt}`,
    `Last successful scheduled cleanup: ${observation.lastSuccessAt ?? 'not established'}`,
    `Review: ${observation.runUrl ?? workflowUrl}`,
    'Manual dry-runs do not count as successful scheduled deletion.',
    'This operational alert contains no player identifiers or match data.',
  ].join('\n\n');
  return { to: 'info@freevia.org', from: sender,
    subject: `[Backgammon Buddy] Privacy cleanup ${observation.status === 'healthy' ? 'recovered' : 'needs attention'}`,
    text,
    html: `<pre>${text.replaceAll('&', '&amp;').replaceAll('<', '&lt;').replaceAll('>', '&gt;')}</pre>`,
  };
}

export async function runMonitor(env: Env, now = Date.now(), fetcher: typeof fetch = fetch) {
  const previous = readState(await env.STATE.get(stateKey, 'json'));
  const observation = await observe(now, fetcher);
  const notify = env.ALERTS_ENABLED === 'true' && shouldNotify(observation, previous, now);
  let notifiedStatus = previous?.notifiedStatus ?? null;
  let lastNotifiedAt = previous?.lastNotifiedAt ?? null;
  if (notify) {
    // Record notification only after delivery is accepted, so failed sends retry
    // on the next cron. KV+email cannot provide atomic exactly-once delivery.
    await env.ALERT_EMAIL.send(emailFor(observation, env.ALERT_FROM));
    notifiedStatus = observation.status;
    lastNotifiedAt = observation.checkedAt;
  }
  await env.STATE.put(stateKey, JSON.stringify({ ...observation, notifiedStatus, lastNotifiedAt }));
  return { status: observation.status, notified: notify, lastSuccessAt: observation.lastSuccessAt };
}
