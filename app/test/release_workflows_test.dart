import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// Source-level guards for release-only boundaries. These do not replace a
/// native build: the workflows also inspect the engine inside each artifact.
void main() {
  String workflow(String name) =>
      File('../.github/workflows/$name.yml').readAsStringSync();

  test('first-party actions use Node 24-compatible majors consistently', () {
    final sources = Directory('../.github/workflows')
        .listSync()
        .whereType<File>()
        .where((file) => file.path.endsWith('.yml'))
        .map((file) => file.readAsStringSync())
        .join('\n');
    final uses = RegExp(
      r'^\s*uses: actions/(checkout|setup-node|cache|setup-java|upload-artifact)@([^\s]+)(?:\s+#\s+(v[^\s]+))?',
      multiLine: true,
    ).allMatches(sources);
    expect(uses, isNotEmpty);
    for (final match in uses) {
      final action = match.group(1)!;
      final reference = match.group(2)!;
      final commentVersion = match.group(3);
      final expectedMajor = switch (action) {
        'checkout' => 'v7',
        'setup-node' => 'v7',
        'cache' => 'v6',
        'setup-java' => 'v6',
        'upload-artifact' => 'v7',
        _ => fail('Unexpected action $action'),
      };
      if (RegExp(r'^[0-9a-f]{40}$').hasMatch(reference)) {
        expect(
          commentVersion,
          startsWith(expectedMajor),
          reason: '$action SHA pin $reference must identify $expectedMajor',
        );
      } else {
        expect(
          reference,
          expectedMajor,
          reason: '$action must use $expectedMajor across workflows',
        );
      }
    }

    final privacy = File(
      '../.github/workflows/privacy-cleanup.yml',
    ).readAsStringSync();
    expect(
      privacy,
      contains(
        'actions/checkout@3d3c42e5aac5ba805825da76410c181273ba90b1 # v7.0.1',
      ),
    );
    expect(
      privacy,
      contains(
        'actions/setup-node@949feb2413d6458794dcd2491c4babbbce0c15c1 # v7.1.0',
      ),
    );
  });

  test('release jobs use their designated runners', () {
    final android = workflow('android');
    final androidLabels = RegExp(
      r'^\s*runs-on:\s*([^\s]+)',
      multiLine: true,
    ).allMatches(android).map((match) => match.group(1)!);
    expect(androidLabels, everyElement('ubuntu-latest'));
    expect(android, contains('actions/setup-java@v6'));
    expect(android, contains('java-version: 21'));

    final windows = workflow('windows');
    final windowsLabels = RegExp(
      r'^\s*runs-on:\s*([^\s]+)',
      multiLine: true,
    ).allMatches(windows).map((match) => match.group(1)!);
    expect(windowsLabels, everyElement('backgammon-buddy-i5-windows'));
    expect(
      windows,
      contains('msys2/setup-msys2@ec48f7c5447b3140e2b088413ae3a55687bccb6e'),
    );
    expect(windows, contains('msystem: UCRT64'));
    expect(windows, contains('mingw-w64-ucrt-x86_64-cmake'));
    expect(windows, contains('mingw-w64-ucrt-x86_64-ninja'));
    expect(windows, contains('mingw-w64-ucrt-x86_64-gcc'));
    expect(windows, contains('ucrt64\\bin'));
    expect(
      windows,
      contains(
        'NuGet/setup-nuget@fd55a6f3b34392fa83fde1454582407d8c714123',
      ),
    );
    expect(windows, contains("nuget-version: '7.9.0'"));

    final privacy = workflow('privacy-cleanup');
    final privacyLabels = RegExp(
      r'^\s*runs-on:\s*([^\s]+)',
      multiLine: true,
    ).allMatches(privacy).map((match) => match.group(1)!);
    expect(privacyLabels, everyElement('backgammon-buddy-i5-linux'));

    final ciLabels = RegExp(
      r'^\s*runs-on:\s*([^\s]+)',
      multiLine: true,
    ).allMatches(workflow('ci')).map((match) => match.group(1)!);
    expect(ciLabels, isNotEmpty);
    expect(ciLabels, everyElement(isIn({'ubuntu-latest', 'windows-latest'})));

    final iosLabels = RegExp(
      r'^\s*runs-on:\s*([^\s]+)',
      multiLine: true,
    ).allMatches(workflow('ios')).map((match) => match.group(1)!);
    expect(iosLabels, ['backgammon-buddy-macmini']);
  });

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
    // Dedicated pinned image and pinned Xcode avoid silent image drift.
    expect(source, contains('runs-on: backgammon-buddy-macmini'));
    expect(source, contains('sudo xcode-select -s'));
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

  test('manual privileged builds require a trusted master ref', () {
    for (final name in ['android', 'ios']) {
      final source = workflow(name);
      // Both release workflows are manual-only. Dispatch can choose a branch,
      // so all release secrets are gated on the trusted master ref.
      expect(
        source,
        matches(RegExp(r'^on:\r?\n  workflow_dispatch:', multiLine: true)),
      );
      expect(source, isNot(matches(RegExp(r'^  push:', multiLine: true))));
      expect(
        source,
        isNot(matches(RegExp(r'^  pull_request:', multiLine: true))),
      );
      expect(source, isNot(contains('workflow_run:')));
      expect(source, isNot(contains('pull_request_target')));
      final references = RegExp(
        r'\$\{\{([^}]*secrets\.[^}]*)\}\}',
      ).allMatches(source).map((match) => match.group(1)!.trim()).toList();
      expect(references, isNotEmpty);
      for (final reference in references) {
        expect(
          reference,
          matches(
            RegExp(
              r"^github\.ref == 'refs/heads/master' && secrets\.[A-Z0-9_]+ \|\| ''$",
            ),
          ),
          reason: '$name must not expose release secrets on another ref',
        );
      }
    }
  });

  test('tester distribution waits for CI to pass on the same commit', () {
    final gate = File('../.github/scripts/wait-for-ci.sh').readAsStringSync();
    expect(gate, contains('--workflow ci.yml'));
    expect(gate, contains('--commit "\$SHA"'));
    expect(gate, contains('--event workflow_dispatch'));
    expect(gate, contains('if [ "\$conclusion" = success ]; then'));
    for (final (name, distribute) in [
      ('android', '      - name: Distribute to Firebase App Distribution'),
      ('ios', '      - name: Node for macOS Firebase distribution'),
    ]) {
      final source = workflow(name);
      final wait = source.indexOf(
        '      - name: Wait for CI to pass on this commit',
      );
      expect(wait, isNonNegative, reason: '$name must gate distribution');
      expect(wait, lessThan(source.indexOf(distribute)));
      final waitIf = RegExp(
        r'      - name: Wait for CI to pass on this commit\r?\n'
        r'        if: ([^\r\n]+)',
      ).firstMatch(source)!.group(1)!;
      expect(
        waitIf,
        startsWith(
          "github.event_name == 'workflow_dispatch' && github.ref == 'refs/heads/master' && ",
        ),
      );
      expect(
        source.substring(wait),
        contains('run: bash .github/scripts/wait-for-ci.sh'),
      );
    }
    // A master CI run must never be cancelled by a later push, or the gate
    // for the earlier commit could never pass.
    expect(
      workflow('ci'),
      contains(
        "cancel-in-progress: \${{ github.event_name == 'pull_request' }}",
      ),
    );
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
