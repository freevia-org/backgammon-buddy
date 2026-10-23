#!/usr/bin/env bash
# Block until the CI workflow (ci.yml) run for the push of $SHA completes, and
# succeed only if it passed.
#
# Used by android.yml and ios.yml immediately before tester distribution. Those
# workflows build in parallel with CI rather than after it, so this is the gate
# that keeps a commit which failed its tests from reaching testers.
#
# Inputs (env): SHA, GH_TOKEN (needs `actions: read`), GITHUB_REPOSITORY.
# Optional: CI_WAIT_TIMEOUT_SECONDS (default 2400), CI_WAIT_POLL_SECONDS (20).
set -euo pipefail

: "${SHA:?SHA is required}"
: "${GH_TOKEN:?GH_TOKEN is required}"
: "${GITHUB_REPOSITORY:?GITHUB_REPOSITORY is required}"

timeout_s="${CI_WAIT_TIMEOUT_SECONDS:-2400}"
poll_s="${CI_WAIT_POLL_SECONDS:-20}"
deadline=$(( $(date +%s) + timeout_s ))

while :; do
  # Newest CI run for this commit's push. A re-run reuses the same run id, so
  # its latest attempt is what we see here.
  line="$(gh run list --repo "$GITHUB_REPOSITORY" --workflow ci.yml \
            --commit "$SHA" --event push --limit 1 \
            --json status,conclusion,url \
            --jq '.[0] // empty | "\(.status) \(.conclusion // "none") \(.url)"')"
  if [ -n "$line" ]; then
    read -r status conclusion url <<<"$line"
    if [ "$status" = completed ]; then
      if [ "$conclusion" = success ]; then
        echo "CI passed for $SHA: $url"
        exit 0
      fi
      echo "::error::CI concluded '$conclusion' for $SHA ($url). Not distributing a commit that did not pass its tests; re-run this job after CI is green."
      exit 1
    fi
    echo "CI for $SHA is '$status' ($url); waiting ${poll_s}s..."
  else
    echo "No CI run for $SHA yet; waiting ${poll_s}s..."
  fi
  if [ "$(date +%s)" -ge "$deadline" ]; then
    echo "::error::Timed out after ${timeout_s}s waiting for CI on $SHA."
    exit 1
  fi
  sleep "$poll_s"
done
