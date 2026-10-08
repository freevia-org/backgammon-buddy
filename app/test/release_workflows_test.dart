import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// Source-level guards for release-only boundaries. These do not replace a
/// native build: the workflows also inspect the engine inside each artifact.
void main() {
  String workflow(String name) =>
      File('../.github/workflows/$name.yml').readAsStringSync();

  test('Freevia mobile identity agrees across builds and signing validation', () {
    const identity = 'org.freevia.backgammonbuddy';
    final android = File('android/app/build.gradle.kts').readAsStringSync();
    expect(android, contains('namespace = "$identity"'));
    expect(android, contains('applicationId = "$identity"'));
    expect(
      File(
        'android/app/src/main/kotlin/org/freevia/backgammonbuddy/MainActivity.kt',
      ).readAsStringSync(),
      startsWith('package $identity'),
    );
    final ios = File('ios/Runner.xcodeproj/project.pbxproj').readAsStringSync();
    final bundles = RegExp(
      r'PRODUCT_BUNDLE_IDENTIFIER = ([^;]+);',
    ).allMatches(ios).map((match) => match.group(1)).toSet();
    expect(bundles, {identity, '$identity.RunnerTests'});
    expect(workflow('android'), contains('--arg package_name "$identity"'));
    expect(
      File('../tool/ios_export_options.py').readAsStringSync(),
      contains("BUNDLE = '$identity'"),
    );
  });

  test('iOS distribution uses native CLI and retains ad-hoc signing gates', () {
    final source = workflow('ios');
    expect(source, contains('runs-on: macos-latest'));
    expect(
      source,
      isNot(contains('uses: wzieba/Firebase-Distribution-Github-Action')),
    );
    expect(source, contains('firebase-tools@15.25.1'));
    final distribute = RegExp(
      r'      - name: Distribute IPA to Firebase App Distribution\r?\n'
      r'        if: ([^\r\n]+)',
    ).firstMatch(source)!.group(1)!;
    expect(
      distribute,
      "steps.ios.outputs.has_signing == 'true' && "
      "steps.ios.outputs.has_distribution == 'true'",
    );
    expect(source, contains("if [ \"\$EXPORT_METHOD\" = 'ad-hoc' ]"));
    expect(source, contains('export GOOGLE_APPLICATION_CREDENTIALS'));
    expect(
      source,
      contains('trap \'rm -f "\$GOOGLE_APPLICATION_CREDENTIALS"\' EXIT'),
    );
    expect(
      source,
      contains('firebase appdistribution:distribute "\$IPA_PATH"'),
    );
  });

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

  test('universal release packaging filters transitive unsupported ABIs', () {
    final gradle = File('android/app/build.gradle.kts').readAsStringSync();
    final filters = gradle.substring(gradle.indexOf('androidComponents {'));
    expect(filters, contains('finalizeDsl { dsl ->'));
    expect(filters, contains('dsl.defaultConfig.ndk.abiFilters.clear()'));
    expect(filters, contains('if (buildType.name == "release")'));
    expect(filters, contains('buildType.ndk.abiFilters.clear()'));
    expect(
      filters,
      contains(
        'buildType.ndk.abiFilters.addAll(setOf("armeabi-v7a", "arm64-v8a"))',
      ),
    );
    expect(filters, contains('buildType.ndk.abiFilters.addAll(flutterAbis)'));
  });

  test(
    'APK and AAB share a build number without Flutter ABI version offsets',
    () {
      final source = workflow('android');
      expect(
        source,
        isNot(contains('flutter build apk --release --split-per-abi')),
      );
      for (final kind in ['apk', 'appbundle']) {
        final command = RegExp(
          'flutter build $kind([\\s\\S]*?)\\\$DEFINES',
        ).firstMatch(source)!.group(1)!;
        expect(command, contains('--build-number="\$BUILD_NUMBER"'));
        expect(command, isNot(contains('--split-per-abi')));
      }
      expect(
        source,
        contains('--android build/app/outputs/flutter-apk/app-release.apk'),
      );
      expect(
        source,
        contains('file: app/build/app/outputs/flutter-apk/app-release.apk'),
      );
    },
  );

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
