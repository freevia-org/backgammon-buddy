# Independent privacy-cleanup monitor

This Cloudflare Worker checks the public GitHub workflow
`freevia-org/backgammon-buddy/.github/workflows/privacy-cleanup.yml` hourly at
minute 47. It has no Google credentials, GitHub token, match data or player IDs.
Only completed `schedule` runs of the exact workflow, repository numeric ID and
`master` branch establish cleanup health. Manual dry-runs do not.

It reports no successful scheduled run within two hours, the latest completed
run failing, a disabled workflow, or an inability to verify GitHub. When email
is enabled, it sends to the binding-restricted `info@freevia.org` address on a
state change, then at most one reminder per unchanged unhealthy state per day.
It sends one recovery notification after an alert. The first healthy observation
is quiet. Each check uses two unauthenticated, time- and size-bounded public API
requests. A GitHub API error is unknown health, never a successful cleanup.

KV stores only last checked/success/notified timestamps, status and public run
URL. Email acceptance precedes recording a notification. Failed delivery retries
next check; KV and email are not one atomic transaction, so rare duplicate
delivery is possible after a failed KV write or delayed KV replication. Cloudflare
cron/email outages can also interrupt this monitor; operators must investigate
failed invocations and must not treat email silence as proof of erasure.

## Local validation

```sh
npm ci --ignore-scripts
npm test
npm run check
npm run build
```

`wrangler types` generates the runtime and binding types from `wrangler.jsonc`.
No manually authored `Env` is used. `wrangler dev --local --test-scheduled`
supports a local scheduled invocation at `/__scheduled`; production HTTP
requests always return 404 and cannot trigger an email. Local email is simulated
unless a developer explicitly enables a remote binding.

## Deployment prerequisites

The checked-in configuration deliberately has `ALERTS_ENABLED=false` and no
account/KV ID. **It is not deployed yet.** Provision only in a verified Freevia
Cloudflare account, then record its account ID and the dedicated KV namespace ID
in the configuration. Do not let Wrangler auto-select a personal account.

The owner approved status-only alerts to `info@freevia.org`, including one test.
The destination must be verified in that Cloudflare account and the sender domain
must be onboarded. Keep `destination_address` restricted to that exact recipient.
Do not replace the company's existing mail routing/MX records merely to enable
this monitor. Verify a supported sending setup first. Enable alerts only after
the correct account and sender/destination are confirmed, and record delivery
evidence in `docs/privacy-cleanup-operations.md`.

The intended rate is 24 cron invocations,48 GitHub requests and about24 KV reads
and writes per day. Sending to verified destination addresses is free on all
Cloudflare plans; general sending to arbitrary recipients is a separate paid
capability and is not required. Check the actual account's quotas before deploy;
do not enable paid billing as part of this setup.

Sources: [Cloudflare verified-destination email pricing](https://developers.cloudflare.com/email-service/platform/pricing/),
[restricted send bindings](https://developers.cloudflare.com/email-service/configuration/send-bindings/),
[KV free limits](https://developers.cloudflare.com/kv/platform/limits/),
[cron triggers](https://developers.cloudflare.com/workers/configuration/cron-triggers/).

A Google Cloud Monitoring success-heartbeat/absence alert was also evaluated.
Its [official custom-metrics setup](https://docs.cloud.google.com/monitoring/custom-metrics/creating-metrics)
requires billing enabled; a low-volume free allotment does not remove that
prerequisite. No billing, Monitoring API or additional IAM was enabled for it.
