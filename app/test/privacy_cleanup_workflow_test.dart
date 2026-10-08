import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  final workflow = File(
    '../.github/workflows/privacy-cleanup.yml',
  ).readAsStringSync().replaceAll('\r\n', '\n');

  test('cleanup identity is restricted to the approved master workflow', () {
    expect(workflow, contains("github.repository_id == '1410906868'"));
    expect(workflow, contains("github.repository_owner_id == '333371985'"));
    expect(workflow, contains("github.ref == 'refs/heads/master'"));
    expect(workflow, isNot(contains('pull_request:')));
    expect(workflow, isNot(contains('workflow_run:')));
    expect(workflow, contains('permissions: {}'));
    expect(workflow, contains('cancel-in-progress: false'));
    expect(workflow, contains('persist-credentials: false'));
  });

  test(
    'manual cleanup is dry-run and scheduled cleanup is explicitly confirmed',
    () {
      expect(workflow, contains("cron: '17 * * * *'"));
      expect(
        workflow,
        contains(
          "if [ \"\$CLEANUP_EVENT\" = 'schedule' ]; then\n"
          '            args+=(--apply --confirm-project backgammon-buddy-freevia)',
        ),
      );
      expect(workflow, isNot(contains('inputs:')));
      expect(workflow, contains('args=(--project backgammon-buddy-freevia)'));
    },
  );

  test(
    'cleanup uses a short-lived token after runtime setup without key files',
    () {
      expect(
        workflow.indexOf('actions/setup-node@'),
        lessThan(workflow.indexOf('google-github-actions/auth@')),
      );
      expect(workflow, contains("node-version: '22'"));
      expect(
        workflow.indexOf('node --test firebase/admin/privacy_cleanup.test.mjs'),
        lessThan(workflow.indexOf('google-github-actions/auth@')),
      );
      expect(workflow, contains('token_format: access_token'));
      expect(workflow, contains('create_credentials_file: false'));
      expect(workflow, contains('export_environment_variables: false'));
      expect(workflow, contains('GOOGLE_OAUTH_ACCESS_TOKEN:'));
      expect(workflow, isNot(contains('credentials_json:')));
      expect(workflow, isNot(contains('secrets.')));
      expect(workflow, contains('set -euo pipefail'));
      expect(workflow, contains('GITHUB_STEP_SUMMARY'));
      expect(
        workflow,
        contains(
          'google-github-actions/auth@'
          '7c6bc770dae815cd3e89ee6cdf493a5fab2cc093',
        ),
      );
    },
  );
}
