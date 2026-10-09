# Online privacy cleanup operations

The approved Freevia project is `backgammon-buddy-freevia` (number
`583751824961`). The Node 22 runner in `firebase/admin/privacy_cleanup.mjs`
processes authenticated erasure requests and the 30-day online-match retention
policy. It prints aggregate counts, never account identifiers or match codes.

## Execution

`.github/workflows/privacy-cleanup.yml` schedules an apply run at minute 17 of
each hour. GitHub schedules are best-effort, not a guaranteed deadline. Runs do
not cancel an in-progress cleanup. A manual dispatch on `master` is always a
dry-run; there is no manual apply input. Both paths select the project explicitly.
Completed erasure markers remain for 24 hours to deny writes from previously
issued account tokens. A failed/partial run keeps protective markers and the
next scheduled run resumes pending work.

Use the Actions run status and count-only summary to monitor completion. A
nonzero exit, `overdueRequests`, or `moreWork` requires investigation; it is not
evidence that erasure completed. Review rules, IAM, quotas and any rejected
unexpected subcollection before retrying. Do not remove a protective marker to
make the runner pass. A manual dry-run can confirm access without changing data.

GitHub can delay or drop scheduled jobs under load, and automatically disables
scheduled workflows in a public repository after 60 days without repository
activity. Operators should inspect the last successful **scheduled apply** timestamp
and investigate a gap of two hours; manual
dry-runs do not prove deletion happened. Re-enable a disabled workflow explicitly
after checking its configuration. Do not create artificial commits to keep it
alive. These constraints are documented by
[GitHub](https://docs.github.com/en/actions/reference/workflows-and-actions/events-that-trigger-workflows#schedule).

The Actions job summary contains counts even when the runner reports incomplete
work; preparation/authentication failures show that no summary is available.
Freevia's designated operator should inspect Actions runs and enable failure
notifications. An independent missed-run alert is an optional operational
improvement, not a Google Play, Firebase or launch requirement. Account
notification preferences and independent alert delivery have **not** been
verified in this setup. The schedule is not an unattended timing guarantee;
investigate failures and do not silently extend retention after an outage.

## Configured identity

Provisioned and read back on 2026-10-09:

| Resource | Value |
|---|---|
| Service account | `privacy-cleanup@backgammon-buddy-freevia.iam.gserviceaccount.com` |
| Workload identity pool | `projects/583751824961/locations/global/workloadIdentityPools/github-privacy` |
| Provider | pool above + `/providers/github-cleanup` |
| OIDC issuer | `https://token.actions.githubusercontent.com` |
| Custom project role | `projects/backgammon-buddy-freevia/roles/backgammonPrivacyCleanup` |
| User-managed service-account keys | None |

The role grants only `datastore.entities.get`, `datastore.entities.list`,
`datastore.entities.update`, `datastore.entities.delete`,
`firebaseauth.users.get`, `firebaseauth.users.update`, and
`firebaseauth.users.delete`. It cannot create records, modify rules, configure
authentication, mint keys or change IAM. Current runner operations do not need
database metadata or transaction permissions; the method requirements are in
the [Firestore IAM reference](https://docs.cloud.google.com/firestore/native/docs/security/iam).

The service account grants `roles/iam.workloadIdentityUser` only to the pool's
`attribute.repository_id/1410906868` principal set. The provider additionally
requires **all** of these GitHub claims:

```text
repository_id       = 1410906868
repository_owner_id = 333371985
ref                 = refs/heads/master
workflow_ref        = freevia-org/backgammon-buddy/.github/workflows/privacy-cleanup.yml@refs/heads/master
event_name          = schedule OR workflow_dispatch
```

All those claims are mapped as provider attributes; `google.subject` maps to
`assertion.sub`. The numeric IDs prevent a deleted/recreated repository or owner
name from inheriting access. Pull requests, forks, other branches, and other
workflow files cannot use this provider. The job also checks the repository IDs,
branch and event. See [Google's federation guide](https://docs.cloud.google.com/iam/docs/workload-identity-federation-with-deployment-pipelines).

The pinned [Google authentication action](https://github.com/google-github-actions/auth)
impersonates the service account for a 30-minute OAuth access token. Node setup
and runner unit tests precede authentication. The token is passed only to the runner's
environment; no credential file or repository secret is created. The job alone
gets `contents: read` and `id-token: write`. IAM, IAM Credentials, STS and Resource
Manager APIs were enabled; no billing account was attached by this setup.

## Production verification

The cloud resources and bindings were read back successfully. Two manual runs
on committed `master` completed the GitHub OIDC exchange and the actual runner:
[initial access](https://github.com/freevia-org/backgammon-buddy/actions/runs/37855356390)
and [queued disposable fixture dry-run](https://github.com/freevia-org/backgammon-buddy/actions/runs/37855479892).
The latter found two authenticated requests and one match with zero mutations,
as required for manual execution. Neither run proves scheduled deletion.

The first [natural scheduled apply](https://github.com/freevia-org/backgammon-buddy/actions/runs/37859798046)
completed successfully at **2026-10-08 23:30:54 UTC**, from source `68f6342`.
It started at 23:30:18 UTC, about 13 minutes after the nominal minute-17 cron;
this directly demonstrates why the schedule is described as best-effort.
The count-only result was `mode=apply`, `requests=2`, `matches=1`,
`documentsDeleted=3`, `accountsDeleted=2`, `overdueRequests=0`, `moreWork=false`.
Independent Google API reads then confirmed both disposable Auth identities
absent, the entire match/events/rolls tree absent, and both request markers
complete. The markers intentionally remain for their 24-hour protection period.
This exercised actual service-account write/delete permissions through GitHub
OIDC; fixture identifiers and tokens were not published.

The later physical-phone test batch was removed by
[scheduled run 37866315438](https://github.com/freevia-org/backgammon-buddy/actions/runs/37866315438)
at **03:44 Kyiv time on October 9 (00:44 UTC)**. It processed three requests,
deleted two matches and 19 documents (17 children plus two parent records),
and deleted three Auth identities, with no overdue requests or remaining work.
Independent read-back at **11:30 Kyiv time (08:30 UTC)** confirmed zero fixture
accounts, match parents or children remaining, zero pending request markers,
and three complete protective markers. Eight overnight scheduled runs succeeded
through the 10:34 Kyiv run. No manual apply or administrative deletion shortcut
was used.

The two public online repository variables, `AIGAMMON_FIREBASE_PROJECT` and
`AIGAMMON_FIREBASE_API_KEY`, were set and their values read back successfully
for the next signed candidate. Freevia project ownership, organization, `eur3`
storage and disabled billing were reverified first. No optional telemetry
platform configuration was set. This backend evidence does not replace the
updated binary's online/device acceptance or authorize store distribution.

The independent Cloudflare monitor is prepared under `ops/privacy-monitor`, with
tests for missed runs, failure, unknown health, deduplication and recovery. It is
not deployed: currently accessible Wrangler/connector credentials expose only a
personal Cloudflare account, including the existing freevia.org zone. A verified
Freevia account, sender setup and verified `info@freevia.org` destination are
needed. The owner approved status-only operational emails and one test; no such
email has been sent yet. This optional monitor remains
undeployed; it is not a launch gate. Operators must still inspect scheduled
cleanup runs and investigate failures or missed runs as described above.
