import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// Source-level guards for release-only boundaries. These do not replace a
/// native build: the workflows also inspect the engine inside each artifact.
void main() {
  String workflow(String name) =>
      File('../.github/workflows/$name.yml').readAsStringSync();

  test('automatic privileged builds require a trusted master push', () {
    for (final name in ['android', 'ios']) {
      final source = workflow(name);
      final jobGate = RegExp(
        r'    if: >-\r?\n([\s\S]*?)    steps:',
      ).firstMatch(source)!.group(1)!.replaceAll(RegExp(r'\s+'), '');
      // A branch filter alone also matches a PR whose head branch is master.
      // All four AND clauses must remain within the workflow_run alternative.
      expect(
        jobGate,
        "github.event_name=='workflow_dispatch'||"
        "(github.event.workflow_run.conclusion=='success'&&"
        "github.event.workflow_run.event=='push'&&"
        "github.event.workflow_run.head_branch=='master'&&"
        'github.event.workflow_run.head_repository.full_name==github.repository)',
        reason: '$name must not execute a PR head with release secrets',
      );
    }
  });

  test('every Android artifact targets only ABIs with a compiled engine', () {
    final source = workflow('android');
    expect(source, contains('-t arm64-v8a -t armeabi-v7a'));
    for (final kind in ['apk', 'appbundle']) {
      final command = RegExp(
        'flutter build $kind([\\s\\S]*?)\\\$DEFINES',
      ).firstMatch(source)!.group(1)!;
      expect(
        command,
        contains('--target-platform android-arm,android-arm64'),
        reason: 'Flutter defaults include x86_64 without its Rust engine',
      );
    }
    expect(source, contains('"lib/\$ABI/libaigammon_engine.so"'));
    expect(source, contains('"base/lib/\$ABI/libaigammon_engine.so"'));
  });

  test('debug signing cannot reach automatic tester distribution', () {
    final source = workflow('android');
    final distribute = RegExp(
      r'      - name: Distribute to Firebase App Distribution\r?\n'
      r'        if: ([^\r\n]+)',
    ).firstMatch(source)!.group(1)!;
    expect(
      distribute,
      "steps.fb.outputs.has_firebase == 'true' && "
      "steps.signing.outputs.has_signing == 'true'",
    );
    expect(source, contains('Require release signing for a Play bundle'));
    expect(
      source,
      contains(
        "inputs.build_appbundle && "
        "steps.signing.outputs.has_signing != 'true'",
      ),
    );
  });
}
