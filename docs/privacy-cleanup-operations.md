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
activity. Freevia must monitor the last successful **scheduled apply** timestamp
independently of code activity and investigate a gap of two hours; manual
dry-runs do not prove deletion happened. Re-enable a disabled workflow explicitly
after checking its configuration. Do not create artificial commits to keep it
alive. These constraints are documented by
[GitHub](https://docs.github.com/en/actions/reference/workflows-and-actions/events-that-trigger-workflows#schedule).

The Actions job summary contains counts even when the runner reports incomplete
work; preparation/authentication failures show that no summary is available.
Freevia's designated operator must enable Actions failure notifications and
verify their delivery, plus arrange an independent missed-run alert. Account
notification preferences and missed-run alert delivery have **not** been
verified in this setup. A timer alone is insufficient evidence for the published
retention commitment. Do not silently extend retention after an outage.

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

The disposable identities, match and child logs remain queued for the next
natural scheduled apply. Verify the service account deletes both Auth identities
and the whole match tree, and marks both requests complete, before enabling the
candidate's online configuration. Do not publish fixture identifiers or tokens.

The independent Cloudflare monitor is prepared under `ops/privacy-monitor`, with
tests for missed runs, failure, unknown health, deduplication and recovery. It is
not deployed: currently accessible Wrangler/connector credentials expose only a
personal Cloudflare account, including the existing freevia.org zone. A verified
Freevia account, sender setup and verified `info@freevia.org` destination are
needed. The owner approved status-only operational emails and one test; no such
email has been sent yet. This remains an explicit release gate.
