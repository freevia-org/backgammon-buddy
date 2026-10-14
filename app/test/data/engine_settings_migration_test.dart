import 'dart:io';
import 'package:aigammon_app/data/app_settings.dart';
import 'package:aigammon_app/data/database.dart';
import 'package:aigammon_app/data/settings_repository.dart';
import 'package:drift/native.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sqlite3/sqlite3.dart';

void main() {
  test(
    'v11 upgrade preserves preferences, defaults to wildbg and persists both-engine settings',
    () async {
      final directory = await Directory.systemTemp.createTemp(
        'backgammon-engines-',
      );
      final file = File('${directory.path}/settings.sqlite');
      var db = AppDatabase(NativeDatabase(file));
      try {
        await SettingsRepository(db).save(
          AppSettings.defaults.copyWith(
            themeMode: ThemeMode.dark,
            localeCode: 'uk',
          ),
        );
        await db.close();
        final raw = sqlite3.open(file.path);
        raw.execute('ALTER TABLE settings DROP COLUMN evaluation_engine');
        raw.execute(
          'ALTER TABLE settings DROP COLUMN parallel_engine_analysis',
        );
        raw.execute('PRAGMA user_version=11');
        raw.dispose();
        db = AppDatabase(NativeDatabase(file));
        var repo = SettingsRepository(db);
        final old = await repo.load();
        expect(old.themeMode, ThemeMode.dark);
        expect(old.localeCode, 'uk');
        expect(old.evaluationEngine, EvaluationEngine.wildbg);
        expect(old.parallelEngineAnalysis, isFalse);
        await repo.update(
          (s) => s.copyWith(
            evaluationEngine: EvaluationEngine.gnubg,
            parallelEngineAnalysis: true,
          ),
        );
        await db.close();
        db = AppDatabase(NativeDatabase(file));
        repo = SettingsRepository(db);
        final reopened = await repo.load();
        expect(reopened.evaluationEngine, EvaluationEngine.gnubg);
        expect(reopened.parallelEngineAnalysis, isTrue);
        expect(reopened.localeCode, 'uk');
        await db.customStatement(
          "UPDATE settings SET evaluation_engine='future-engine'",
        );
        expect((await repo.load()).evaluationEngine, EvaluationEngine.wildbg);
        await repo.save(AppSettings.defaults);
        expect(await repo.load(), AppSettings.defaults);
      } finally {
        await db.close();
        await directory.delete(recursive: true);
      }
    },
  );
}
