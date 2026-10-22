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
    'v11 upgrade preserves preferences, defaults to GNUbg and persists both-engine settings',
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
        expect(old.evaluationEngine, EvaluationEngine.gnubg);
        expect(old.parallelEngineAnalysis, isFalse);
        await repo.update(
          (s) => s.copyWith(
            evaluationEngine: EvaluationEngine.wildbg,
            parallelEngineAnalysis: true,
          ),
        );
        await db.close();
        db = AppDatabase(NativeDatabase(file));
        repo = SettingsRepository(db);
        final reopened = await repo.load();
        expect(reopened.evaluationEngine, EvaluationEngine.wildbg);
        expect(reopened.parallelEngineAnalysis, isTrue);
        expect(reopened.localeCode, 'uk');
        await db.customStatement(
          "UPDATE settings SET evaluation_engine='future-engine'",
        );
        expect((await repo.load()).evaluationEngine, EvaluationEngine.gnubg);
        await repo.save(AppSettings.defaults);
        expect(await repo.load(), AppSettings.defaults);
      } finally {
        await db.close();
        await directory.delete(recursive: true);
      }
    },
  );

  test(
    'v12 upgrade preserves wildbg and updates the SQL default to GNUbg',
    () async {
      final directory = await Directory.systemTemp.createTemp(
        'backgammon-default-',
      );
      final file = File('${directory.path}/settings.sqlite');
      var db = AppDatabase(NativeDatabase(file));
      try {
        await SettingsRepository(db).save(
          AppSettings.defaults.copyWith(
            evaluationEngine: EvaluationEngine.wildbg,
            parallelEngineAnalysis: true,
            localeCode: 'uk',
          ),
        );
        await db.close();
        final raw = sqlite3.open(file.path);
        final ddl =
            raw
                    .select(
                      "SELECT sql FROM sqlite_master WHERE name='settings'",
                    )
                    .single['sql']
                as String;
        raw.execute('ALTER TABLE settings RENAME TO old_settings');
        raw.execute(ddl.replaceAll("'gnubg'", "'wildbg'"));
        raw.execute('INSERT INTO settings SELECT * FROM old_settings');
        raw.execute('DROP TABLE old_settings');
        raw.execute('PRAGMA user_version=12');
        raw.dispose();
        db = AppDatabase(NativeDatabase(file));
        final saved = await SettingsRepository(db).load();
        expect(saved.evaluationEngine, EvaluationEngine.wildbg);
        expect(saved.parallelEngineAnalysis, isTrue);
        expect(saved.localeCode, 'uk');
        final columns = await db
            .customSelect('PRAGMA table_info(settings)')
            .get();
        expect(
          columns
              .singleWhere((r) => r.data['name'] == 'evaluation_engine')
              .data['dflt_value'],
          "'gnubg'",
        );
        await SettingsRepository(db).save(AppSettings.defaults);
        expect(
          (await SettingsRepository(db).load()).evaluationEngine,
          EvaluationEngine.gnubg,
        );
      } finally {
        await db.close();
        await directory.delete(recursive: true);
      }
    },
  );
}
