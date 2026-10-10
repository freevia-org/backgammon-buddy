// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $MatchesTable extends Matches with TableInfo<$MatchesTable, MatchRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MatchesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _matchLengthMeta = const VerificationMeta(
    'matchLength',
  );
  @override
  late final GeneratedColumn<int> matchLength = GeneratedColumn<int>(
    'match_length',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _modeMeta = const VerificationMeta('mode');
  @override
  late final GeneratedColumn<String> mode = GeneratedColumn<String>(
    'mode',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _whiteTypeMeta = const VerificationMeta(
    'whiteType',
  );
  @override
  late final GeneratedColumn<String> whiteType = GeneratedColumn<String>(
    'white_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _blackTypeMeta = const VerificationMeta(
    'blackType',
  );
  @override
  late final GeneratedColumn<String> blackType = GeneratedColumn<String>(
    'black_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cubelessMeta = const VerificationMeta(
    'cubeless',
  );
  @override
  late final GeneratedColumn<bool> cubeless = GeneratedColumn<bool>(
    'cubeless',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("cubeless" IN (0, 1))',
    ),
  );
  static const VerificationMeta _whiteScoreMeta = const VerificationMeta(
    'whiteScore',
  );
  @override
  late final GeneratedColumn<int> whiteScore = GeneratedColumn<int>(
    'white_score',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _blackScoreMeta = const VerificationMeta(
    'blackScore',
  );
  @override
  late final GeneratedColumn<int> blackScore = GeneratedColumn<int>(
    'black_score',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _winnerMeta = const VerificationMeta('winner');
  @override
  late final GeneratedColumn<String> winner = GeneratedColumn<String>(
    'winner',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _completedMeta = const VerificationMeta(
    'completed',
  );
  @override
  late final GeneratedColumn<bool> completed = GeneratedColumn<bool>(
    'completed',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("completed" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    createdAt,
    matchLength,
    mode,
    whiteType,
    blackType,
    cubeless,
    whiteScore,
    blackScore,
    winner,
    completed,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'matches';
  @override
  VerificationContext validateIntegrity(
    Insertable<MatchRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('match_length')) {
      context.handle(
        _matchLengthMeta,
        matchLength.isAcceptableOrUnknown(
          data['match_length']!,
          _matchLengthMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_matchLengthMeta);
    }
    if (data.containsKey('mode')) {
      context.handle(
        _modeMeta,
        mode.isAcceptableOrUnknown(data['mode']!, _modeMeta),
      );
    } else if (isInserting) {
      context.missing(_modeMeta);
    }
    if (data.containsKey('white_type')) {
      context.handle(
        _whiteTypeMeta,
        whiteType.isAcceptableOrUnknown(data['white_type']!, _whiteTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_whiteTypeMeta);
    }
    if (data.containsKey('black_type')) {
      context.handle(
        _blackTypeMeta,
        blackType.isAcceptableOrUnknown(data['black_type']!, _blackTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_blackTypeMeta);
    }
    if (data.containsKey('cubeless')) {
      context.handle(
        _cubelessMeta,
        cubeless.isAcceptableOrUnknown(data['cubeless']!, _cubelessMeta),
      );
    }
    if (data.containsKey('white_score')) {
      context.handle(
        _whiteScoreMeta,
        whiteScore.isAcceptableOrUnknown(data['white_score']!, _whiteScoreMeta),
      );
    }
    if (data.containsKey('black_score')) {
      context.handle(
        _blackScoreMeta,
        blackScore.isAcceptableOrUnknown(data['black_score']!, _blackScoreMeta),
      );
    }
    if (data.containsKey('winner')) {
      context.handle(
        _winnerMeta,
        winner.isAcceptableOrUnknown(data['winner']!, _winnerMeta),
      );
    }
    if (data.containsKey('completed')) {
      context.handle(
        _completedMeta,
        completed.isAcceptableOrUnknown(data['completed']!, _completedMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MatchRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MatchRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      matchLength: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}match_length'],
      )!,
      mode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}mode'],
      )!,
      whiteType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}white_type'],
      )!,
      blackType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}black_type'],
      )!,
      cubeless: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}cubeless'],
      ),
      whiteScore: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}white_score'],
      )!,
      blackScore: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}black_score'],
      )!,
      winner: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}winner'],
      ),
      completed: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}completed'],
      )!,
    );
  }

  @override
  $MatchesTable createAlias(String alias) {
    return $MatchesTable(attachedDatabase, alias);
  }
}

class MatchRow extends DataClass implements Insertable<MatchRow> {
  final int id;
  final DateTime createdAt;
  final int matchLength;

  /// 'vsComputer' | 'hotSeat'.
  final String mode;

  /// Player identity strings, e.g. 'human' or 'ai:expert'.
  final String whiteType;
  final String blackType;

  /// Null for legacy records whose cube setting was not recorded.
  final bool? cubeless;
  final int whiteScore;
  final int blackScore;

  /// 'white' | 'black' once the match is decided; null while in progress.
  final String? winner;
  final bool completed;
  const MatchRow({
    required this.id,
    required this.createdAt,
    required this.matchLength,
    required this.mode,
    required this.whiteType,
    required this.blackType,
    this.cubeless,
    required this.whiteScore,
    required this.blackScore,
    this.winner,
    required this.completed,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['match_length'] = Variable<int>(matchLength);
    map['mode'] = Variable<String>(mode);
    map['white_type'] = Variable<String>(whiteType);
    map['black_type'] = Variable<String>(blackType);
    if (!nullToAbsent || cubeless != null) {
      map['cubeless'] = Variable<bool>(cubeless);
    }
    map['white_score'] = Variable<int>(whiteScore);
    map['black_score'] = Variable<int>(blackScore);
    if (!nullToAbsent || winner != null) {
      map['winner'] = Variable<String>(winner);
    }
    map['completed'] = Variable<bool>(completed);
    return map;
  }

  MatchesCompanion toCompanion(bool nullToAbsent) {
    return MatchesCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      matchLength: Value(matchLength),
      mode: Value(mode),
      whiteType: Value(whiteType),
      blackType: Value(blackType),
      cubeless: cubeless == null && nullToAbsent
          ? const Value.absent()
          : Value(cubeless),
      whiteScore: Value(whiteScore),
      blackScore: Value(blackScore),
      winner: winner == null && nullToAbsent
          ? const Value.absent()
          : Value(winner),
      completed: Value(completed),
    );
  }

  factory MatchRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MatchRow(
      id: serializer.fromJson<int>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      matchLength: serializer.fromJson<int>(json['matchLength']),
      mode: serializer.fromJson<String>(json['mode']),
      whiteType: serializer.fromJson<String>(json['whiteType']),
      blackType: serializer.fromJson<String>(json['blackType']),
      cubeless: serializer.fromJson<bool?>(json['cubeless']),
      whiteScore: serializer.fromJson<int>(json['whiteScore']),
      blackScore: serializer.fromJson<int>(json['blackScore']),
      winner: serializer.fromJson<String?>(json['winner']),
      completed: serializer.fromJson<bool>(json['completed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'matchLength': serializer.toJson<int>(matchLength),
      'mode': serializer.toJson<String>(mode),
      'whiteType': serializer.toJson<String>(whiteType),
      'blackType': serializer.toJson<String>(blackType),
      'cubeless': serializer.toJson<bool?>(cubeless),
      'whiteScore': serializer.toJson<int>(whiteScore),
      'blackScore': serializer.toJson<int>(blackScore),
      'winner': serializer.toJson<String?>(winner),
      'completed': serializer.toJson<bool>(completed),
    };
  }

  MatchRow copyWith({
    int? id,
    DateTime? createdAt,
    int? matchLength,
    String? mode,
    String? whiteType,
    String? blackType,
    Value<bool?> cubeless = const Value.absent(),
    int? whiteScore,
    int? blackScore,
    Value<String?> winner = const Value.absent(),
    bool? completed,
  }) => MatchRow(
    id: id ?? this.id,
    createdAt: createdAt ?? this.createdAt,
    matchLength: matchLength ?? this.matchLength,
    mode: mode ?? this.mode,
    whiteType: whiteType ?? this.whiteType,
    blackType: blackType ?? this.blackType,
    cubeless: cubeless.present ? cubeless.value : this.cubeless,
    whiteScore: whiteScore ?? this.whiteScore,
    blackScore: blackScore ?? this.blackScore,
    winner: winner.present ? winner.value : this.winner,
    completed: completed ?? this.completed,
  );
  MatchRow copyWithCompanion(MatchesCompanion data) {
    return MatchRow(
      id: data.id.present ? data.id.value : this.id,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      matchLength: data.matchLength.present
          ? data.matchLength.value
          : this.matchLength,
      mode: data.mode.present ? data.mode.value : this.mode,
      whiteType: data.whiteType.present ? data.whiteType.value : this.whiteType,
      blackType: data.blackType.present ? data.blackType.value : this.blackType,
      cubeless: data.cubeless.present ? data.cubeless.value : this.cubeless,
      whiteScore: data.whiteScore.present
          ? data.whiteScore.value
          : this.whiteScore,
      blackScore: data.blackScore.present
          ? data.blackScore.value
          : this.blackScore,
      winner: data.winner.present ? data.winner.value : this.winner,
      completed: data.completed.present ? data.completed.value : this.completed,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MatchRow(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('matchLength: $matchLength, ')
          ..write('mode: $mode, ')
          ..write('whiteType: $whiteType, ')
          ..write('blackType: $blackType, ')
          ..write('cubeless: $cubeless, ')
          ..write('whiteScore: $whiteScore, ')
          ..write('blackScore: $blackScore, ')
          ..write('winner: $winner, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    createdAt,
    matchLength,
    mode,
    whiteType,
    blackType,
    cubeless,
    whiteScore,
    blackScore,
    winner,
    completed,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MatchRow &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.matchLength == this.matchLength &&
          other.mode == this.mode &&
          other.whiteType == this.whiteType &&
          other.blackType == this.blackType &&
          other.cubeless == this.cubeless &&
          other.whiteScore == this.whiteScore &&
          other.blackScore == this.blackScore &&
          other.winner == this.winner &&
          other.completed == this.completed);
}

class MatchesCompanion extends UpdateCompanion<MatchRow> {
  final Value<int> id;
  final Value<DateTime> createdAt;
  final Value<int> matchLength;
  final Value<String> mode;
  final Value<String> whiteType;
  final Value<String> blackType;
  final Value<bool?> cubeless;
  final Value<int> whiteScore;
  final Value<int> blackScore;
  final Value<String?> winner;
  final Value<bool> completed;
  const MatchesCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.matchLength = const Value.absent(),
    this.mode = const Value.absent(),
    this.whiteType = const Value.absent(),
    this.blackType = const Value.absent(),
    this.cubeless = const Value.absent(),
    this.whiteScore = const Value.absent(),
    this.blackScore = const Value.absent(),
    this.winner = const Value.absent(),
    this.completed = const Value.absent(),
  });
  MatchesCompanion.insert({
    this.id = const Value.absent(),
    required DateTime createdAt,
    required int matchLength,
    required String mode,
    required String whiteType,
    required String blackType,
    this.cubeless = const Value.absent(),
    this.whiteScore = const Value.absent(),
    this.blackScore = const Value.absent(),
    this.winner = const Value.absent(),
    this.completed = const Value.absent(),
  }) : createdAt = Value(createdAt),
       matchLength = Value(matchLength),
       mode = Value(mode),
       whiteType = Value(whiteType),
       blackType = Value(blackType);
  static Insertable<MatchRow> custom({
    Expression<int>? id,
    Expression<DateTime>? createdAt,
    Expression<int>? matchLength,
    Expression<String>? mode,
    Expression<String>? whiteType,
    Expression<String>? blackType,
    Expression<bool>? cubeless,
    Expression<int>? whiteScore,
    Expression<int>? blackScore,
    Expression<String>? winner,
    Expression<bool>? completed,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (matchLength != null) 'match_length': matchLength,
      if (mode != null) 'mode': mode,
      if (whiteType != null) 'white_type': whiteType,
      if (blackType != null) 'black_type': blackType,
      if (cubeless != null) 'cubeless': cubeless,
      if (whiteScore != null) 'white_score': whiteScore,
      if (blackScore != null) 'black_score': blackScore,
      if (winner != null) 'winner': winner,
      if (completed != null) 'completed': completed,
    });
  }

  MatchesCompanion copyWith({
    Value<int>? id,
    Value<DateTime>? createdAt,
    Value<int>? matchLength,
    Value<String>? mode,
    Value<String>? whiteType,
    Value<String>? blackType,
    Value<bool?>? cubeless,
    Value<int>? whiteScore,
    Value<int>? blackScore,
    Value<String?>? winner,
    Value<bool>? completed,
  }) {
    return MatchesCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      matchLength: matchLength ?? this.matchLength,
      mode: mode ?? this.mode,
      whiteType: whiteType ?? this.whiteType,
      blackType: blackType ?? this.blackType,
      cubeless: cubeless ?? this.cubeless,
      whiteScore: whiteScore ?? this.whiteScore,
      blackScore: blackScore ?? this.blackScore,
      winner: winner ?? this.winner,
      completed: completed ?? this.completed,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (matchLength.present) {
      map['match_length'] = Variable<int>(matchLength.value);
    }
    if (mode.present) {
      map['mode'] = Variable<String>(mode.value);
    }
    if (whiteType.present) {
      map['white_type'] = Variable<String>(whiteType.value);
    }
    if (blackType.present) {
      map['black_type'] = Variable<String>(blackType.value);
    }
    if (cubeless.present) {
      map['cubeless'] = Variable<bool>(cubeless.value);
    }
    if (whiteScore.present) {
      map['white_score'] = Variable<int>(whiteScore.value);
    }
    if (blackScore.present) {
      map['black_score'] = Variable<int>(blackScore.value);
    }
    if (winner.present) {
      map['winner'] = Variable<String>(winner.value);
    }
    if (completed.present) {
      map['completed'] = Variable<bool>(completed.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MatchesCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('matchLength: $matchLength, ')
          ..write('mode: $mode, ')
          ..write('whiteType: $whiteType, ')
          ..write('blackType: $blackType, ')
          ..write('cubeless: $cubeless, ')
          ..write('whiteScore: $whiteScore, ')
          ..write('blackScore: $blackScore, ')
          ..write('winner: $winner, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }
}

class $GamesTable extends Games with TableInfo<$GamesTable, GameRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GamesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _matchIdMeta = const VerificationMeta(
    'matchId',
  );
  @override
  late final GeneratedColumn<int> matchId = GeneratedColumn<int>(
    'match_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL REFERENCES matches (id) ON DELETE CASCADE',
  );
  static const VerificationMeta _gameNumberMeta = const VerificationMeta(
    'gameNumber',
  );
  @override
  late final GeneratedColumn<int> gameNumber = GeneratedColumn<int>(
    'game_number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isCrawfordMeta = const VerificationMeta(
    'isCrawford',
  );
  @override
  late final GeneratedColumn<bool> isCrawford = GeneratedColumn<bool>(
    'is_crawford',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_crawford" IN (0, 1))',
    ),
  );
  static const VerificationMeta _eventsJsonMeta = const VerificationMeta(
    'eventsJson',
  );
  @override
  late final GeneratedColumn<String> eventsJson = GeneratedColumn<String>(
    'events_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _resultWinnerMeta = const VerificationMeta(
    'resultWinner',
  );
  @override
  late final GeneratedColumn<String> resultWinner = GeneratedColumn<String>(
    'result_winner',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _resultPointsMeta = const VerificationMeta(
    'resultPoints',
  );
  @override
  late final GeneratedColumn<int> resultPoints = GeneratedColumn<int>(
    'result_points',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _resultOutcomeMeta = const VerificationMeta(
    'resultOutcome',
  );
  @override
  late final GeneratedColumn<String> resultOutcome = GeneratedColumn<String>(
    'result_outcome',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _analysisJsonMeta = const VerificationMeta(
    'analysisJson',
  );
  @override
  late final GeneratedColumn<String> analysisJson = GeneratedColumn<String>(
    'analysis_json',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    matchId,
    gameNumber,
    isCrawford,
    eventsJson,
    resultWinner,
    resultPoints,
    resultOutcome,
    analysisJson,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'games';
  @override
  VerificationContext validateIntegrity(
    Insertable<GameRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('match_id')) {
      context.handle(
        _matchIdMeta,
        matchId.isAcceptableOrUnknown(data['match_id']!, _matchIdMeta),
      );
    } else if (isInserting) {
      context.missing(_matchIdMeta);
    }
    if (data.containsKey('game_number')) {
      context.handle(
        _gameNumberMeta,
        gameNumber.isAcceptableOrUnknown(data['game_number']!, _gameNumberMeta),
      );
    } else if (isInserting) {
      context.missing(_gameNumberMeta);
    }
    if (data.containsKey('is_crawford')) {
      context.handle(
        _isCrawfordMeta,
        isCrawford.isAcceptableOrUnknown(data['is_crawford']!, _isCrawfordMeta),
      );
    } else if (isInserting) {
      context.missing(_isCrawfordMeta);
    }
    if (data.containsKey('events_json')) {
      context.handle(
        _eventsJsonMeta,
        eventsJson.isAcceptableOrUnknown(data['events_json']!, _eventsJsonMeta),
      );
    } else if (isInserting) {
      context.missing(_eventsJsonMeta);
    }
    if (data.containsKey('result_winner')) {
      context.handle(
        _resultWinnerMeta,
        resultWinner.isAcceptableOrUnknown(
          data['result_winner']!,
          _resultWinnerMeta,
        ),
      );
    }
    if (data.containsKey('result_points')) {
      context.handle(
        _resultPointsMeta,
        resultPoints.isAcceptableOrUnknown(
          data['result_points']!,
          _resultPointsMeta,
        ),
      );
    }
    if (data.containsKey('result_outcome')) {
      context.handle(
        _resultOutcomeMeta,
        resultOutcome.isAcceptableOrUnknown(
          data['result_outcome']!,
          _resultOutcomeMeta,
        ),
      );
    }
    if (data.containsKey('analysis_json')) {
      context.handle(
        _analysisJsonMeta,
        analysisJson.isAcceptableOrUnknown(
          data['analysis_json']!,
          _analysisJsonMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GameRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GameRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      matchId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}match_id'],
      )!,
      gameNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}game_number'],
      )!,
      isCrawford: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_crawford'],
      )!,
      eventsJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}events_json'],
      )!,
      resultWinner: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}result_winner'],
      ),
      resultPoints: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}result_points'],
      ),
      resultOutcome: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}result_outcome'],
      ),
      analysisJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}analysis_json'],
      ),
    );
  }

  @override
  $GamesTable createAlias(String alias) {
    return $GamesTable(attachedDatabase, alias);
  }
}

class GameRow extends DataClass implements Insertable<GameRow> {
  final int id;

  /// A REAL SQL foreign key (emitted via [customConstraint], so the generated
  /// DDL carries `REFERENCES matches (id) ON DELETE CASCADE`). drift's
  /// `.references()` only wires the Dart-side relation; it does not emit the SQL
  /// constraint, so a customConstraint is used to enforce integrity at the
  /// database level. Cascade delete relies on `PRAGMA foreign_keys = ON`, which
  /// [AppDatabase.migration] enables in `beforeOpen`. Because this column drops
  /// the default `NOT NULL`, it is restated here explicitly.
  final int matchId;
  final int gameNumber;
  final bool isCrawford;

  /// A JSON array of `GameEvent.toJson()` maps (the full event log).
  final String eventsJson;

  /// The folded [GameResult], flattened. Null only for an unfinished game
  /// (not persisted in v1 — games are recorded once complete).
  final String? resultWinner;
  final int? resultPoints;
  final String? resultOutcome;

  /// Cached analysis payload (Task 8), attached lazily after the game ends.
  final String? analysisJson;
  const GameRow({
    required this.id,
    required this.matchId,
    required this.gameNumber,
    required this.isCrawford,
    required this.eventsJson,
    this.resultWinner,
    this.resultPoints,
    this.resultOutcome,
    this.analysisJson,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['match_id'] = Variable<int>(matchId);
    map['game_number'] = Variable<int>(gameNumber);
    map['is_crawford'] = Variable<bool>(isCrawford);
    map['events_json'] = Variable<String>(eventsJson);
    if (!nullToAbsent || resultWinner != null) {
      map['result_winner'] = Variable<String>(resultWinner);
    }
    if (!nullToAbsent || resultPoints != null) {
      map['result_points'] = Variable<int>(resultPoints);
    }
    if (!nullToAbsent || resultOutcome != null) {
      map['result_outcome'] = Variable<String>(resultOutcome);
    }
    if (!nullToAbsent || analysisJson != null) {
      map['analysis_json'] = Variable<String>(analysisJson);
    }
    return map;
  }

  GamesCompanion toCompanion(bool nullToAbsent) {
    return GamesCompanion(
      id: Value(id),
      matchId: Value(matchId),
      gameNumber: Value(gameNumber),
      isCrawford: Value(isCrawford),
      eventsJson: Value(eventsJson),
      resultWinner: resultWinner == null && nullToAbsent
          ? const Value.absent()
          : Value(resultWinner),
      resultPoints: resultPoints == null && nullToAbsent
          ? const Value.absent()
          : Value(resultPoints),
      resultOutcome: resultOutcome == null && nullToAbsent
          ? const Value.absent()
          : Value(resultOutcome),
      analysisJson: analysisJson == null && nullToAbsent
          ? const Value.absent()
          : Value(analysisJson),
    );
  }

  factory GameRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GameRow(
      id: serializer.fromJson<int>(json['id']),
      matchId: serializer.fromJson<int>(json['matchId']),
      gameNumber: serializer.fromJson<int>(json['gameNumber']),
      isCrawford: serializer.fromJson<bool>(json['isCrawford']),
      eventsJson: serializer.fromJson<String>(json['eventsJson']),
      resultWinner: serializer.fromJson<String?>(json['resultWinner']),
      resultPoints: serializer.fromJson<int?>(json['resultPoints']),
      resultOutcome: serializer.fromJson<String?>(json['resultOutcome']),
      analysisJson: serializer.fromJson<String?>(json['analysisJson']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'matchId': serializer.toJson<int>(matchId),
      'gameNumber': serializer.toJson<int>(gameNumber),
      'isCrawford': serializer.toJson<bool>(isCrawford),
      'eventsJson': serializer.toJson<String>(eventsJson),
      'resultWinner': serializer.toJson<String?>(resultWinner),
      'resultPoints': serializer.toJson<int?>(resultPoints),
      'resultOutcome': serializer.toJson<String?>(resultOutcome),
      'analysisJson': serializer.toJson<String?>(analysisJson),
    };
  }

  GameRow copyWith({
    int? id,
    int? matchId,
    int? gameNumber,
    bool? isCrawford,
    String? eventsJson,
    Value<String?> resultWinner = const Value.absent(),
    Value<int?> resultPoints = const Value.absent(),
    Value<String?> resultOutcome = const Value.absent(),
    Value<String?> analysisJson = const Value.absent(),
  }) => GameRow(
    id: id ?? this.id,
    matchId: matchId ?? this.matchId,
    gameNumber: gameNumber ?? this.gameNumber,
    isCrawford: isCrawford ?? this.isCrawford,
    eventsJson: eventsJson ?? this.eventsJson,
    resultWinner: resultWinner.present ? resultWinner.value : this.resultWinner,
    resultPoints: resultPoints.present ? resultPoints.value : this.resultPoints,
    resultOutcome: resultOutcome.present
        ? resultOutcome.value
        : this.resultOutcome,
    analysisJson: analysisJson.present ? analysisJson.value : this.analysisJson,
  );
  GameRow copyWithCompanion(GamesCompanion data) {
    return GameRow(
      id: data.id.present ? data.id.value : this.id,
      matchId: data.matchId.present ? data.matchId.value : this.matchId,
      gameNumber: data.gameNumber.present
          ? data.gameNumber.value
          : this.gameNumber,
      isCrawford: data.isCrawford.present
          ? data.isCrawford.value
          : this.isCrawford,
      eventsJson: data.eventsJson.present
          ? data.eventsJson.value
          : this.eventsJson,
      resultWinner: data.resultWinner.present
          ? data.resultWinner.value
          : this.resultWinner,
      resultPoints: data.resultPoints.present
          ? data.resultPoints.value
          : this.resultPoints,
      resultOutcome: data.resultOutcome.present
          ? data.resultOutcome.value
          : this.resultOutcome,
      analysisJson: data.analysisJson.present
          ? data.analysisJson.value
          : this.analysisJson,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GameRow(')
          ..write('id: $id, ')
          ..write('matchId: $matchId, ')
          ..write('gameNumber: $gameNumber, ')
          ..write('isCrawford: $isCrawford, ')
          ..write('eventsJson: $eventsJson, ')
          ..write('resultWinner: $resultWinner, ')
          ..write('resultPoints: $resultPoints, ')
          ..write('resultOutcome: $resultOutcome, ')
          ..write('analysisJson: $analysisJson')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    matchId,
    gameNumber,
    isCrawford,
    eventsJson,
    resultWinner,
    resultPoints,
    resultOutcome,
    analysisJson,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GameRow &&
          other.id == this.id &&
          other.matchId == this.matchId &&
          other.gameNumber == this.gameNumber &&
          other.isCrawford == this.isCrawford &&
          other.eventsJson == this.eventsJson &&
          other.resultWinner == this.resultWinner &&
          other.resultPoints == this.resultPoints &&
          other.resultOutcome == this.resultOutcome &&
          other.analysisJson == this.analysisJson);
}

class GamesCompanion extends UpdateCompanion<GameRow> {
  final Value<int> id;
  final Value<int> matchId;
  final Value<int> gameNumber;
  final Value<bool> isCrawford;
  final Value<String> eventsJson;
  final Value<String?> resultWinner;
  final Value<int?> resultPoints;
  final Value<String?> resultOutcome;
  final Value<String?> analysisJson;
  const GamesCompanion({
    this.id = const Value.absent(),
    this.matchId = const Value.absent(),
    this.gameNumber = const Value.absent(),
    this.isCrawford = const Value.absent(),
    this.eventsJson = const Value.absent(),
    this.resultWinner = const Value.absent(),
    this.resultPoints = const Value.absent(),
    this.resultOutcome = const Value.absent(),
    this.analysisJson = const Value.absent(),
  });
  GamesCompanion.insert({
    this.id = const Value.absent(),
    required int matchId,
    required int gameNumber,
    required bool isCrawford,
    required String eventsJson,
    this.resultWinner = const Value.absent(),
    this.resultPoints = const Value.absent(),
    this.resultOutcome = const Value.absent(),
    this.analysisJson = const Value.absent(),
  }) : matchId = Value(matchId),
       gameNumber = Value(gameNumber),
       isCrawford = Value(isCrawford),
       eventsJson = Value(eventsJson);
  static Insertable<GameRow> custom({
    Expression<int>? id,
    Expression<int>? matchId,
    Expression<int>? gameNumber,
    Expression<bool>? isCrawford,
    Expression<String>? eventsJson,
    Expression<String>? resultWinner,
    Expression<int>? resultPoints,
    Expression<String>? resultOutcome,
    Expression<String>? analysisJson,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (matchId != null) 'match_id': matchId,
      if (gameNumber != null) 'game_number': gameNumber,
      if (isCrawford != null) 'is_crawford': isCrawford,
      if (eventsJson != null) 'events_json': eventsJson,
      if (resultWinner != null) 'result_winner': resultWinner,
      if (resultPoints != null) 'result_points': resultPoints,
      if (resultOutcome != null) 'result_outcome': resultOutcome,
      if (analysisJson != null) 'analysis_json': analysisJson,
    });
  }

  GamesCompanion copyWith({
    Value<int>? id,
    Value<int>? matchId,
    Value<int>? gameNumber,
    Value<bool>? isCrawford,
    Value<String>? eventsJson,
    Value<String?>? resultWinner,
    Value<int?>? resultPoints,
    Value<String?>? resultOutcome,
    Value<String?>? analysisJson,
  }) {
    return GamesCompanion(
      id: id ?? this.id,
      matchId: matchId ?? this.matchId,
      gameNumber: gameNumber ?? this.gameNumber,
      isCrawford: isCrawford ?? this.isCrawford,
      eventsJson: eventsJson ?? this.eventsJson,
      resultWinner: resultWinner ?? this.resultWinner,
      resultPoints: resultPoints ?? this.resultPoints,
      resultOutcome: resultOutcome ?? this.resultOutcome,
      analysisJson: analysisJson ?? this.analysisJson,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (matchId.present) {
      map['match_id'] = Variable<int>(matchId.value);
    }
    if (gameNumber.present) {
      map['game_number'] = Variable<int>(gameNumber.value);
    }
    if (isCrawford.present) {
      map['is_crawford'] = Variable<bool>(isCrawford.value);
    }
    if (eventsJson.present) {
      map['events_json'] = Variable<String>(eventsJson.value);
    }
    if (resultWinner.present) {
      map['result_winner'] = Variable<String>(resultWinner.value);
    }
    if (resultPoints.present) {
      map['result_points'] = Variable<int>(resultPoints.value);
    }
    if (resultOutcome.present) {
      map['result_outcome'] = Variable<String>(resultOutcome.value);
    }
    if (analysisJson.present) {
      map['analysis_json'] = Variable<String>(analysisJson.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GamesCompanion(')
          ..write('id: $id, ')
          ..write('matchId: $matchId, ')
          ..write('gameNumber: $gameNumber, ')
          ..write('isCrawford: $isCrawford, ')
          ..write('eventsJson: $eventsJson, ')
          ..write('resultWinner: $resultWinner, ')
          ..write('resultPoints: $resultPoints, ')
          ..write('resultOutcome: $resultOutcome, ')
          ..write('analysisJson: $analysisJson')
          ..write(')'))
        .toString();
  }
}

class $SettingsTable extends Settings
    with TableInfo<$SettingsTable, SettingsRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _themeModeMeta = const VerificationMeta(
    'themeMode',
  );
  @override
  late final GeneratedColumn<String> themeMode = GeneratedColumn<String>(
    'theme_mode',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('system'),
  );
  static const VerificationMeta _animationSpeedMeta = const VerificationMeta(
    'animationSpeed',
  );
  @override
  late final GeneratedColumn<String> animationSpeed = GeneratedColumn<String>(
    'animation_speed',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('normal'),
  );
  static const VerificationMeta _defaultMatchLengthMeta =
      const VerificationMeta('defaultMatchLength');
  @override
  late final GeneratedColumn<int> defaultMatchLength = GeneratedColumn<int>(
    'default_match_length',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(5),
  );
  static const VerificationMeta _defaultDifficultyMeta = const VerificationMeta(
    'defaultDifficulty',
  );
  @override
  late final GeneratedColumn<String> defaultDifficulty =
      GeneratedColumn<String>(
        'default_difficulty',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('medium'),
      );
  static const VerificationMeta _tutorOverrideMeta = const VerificationMeta(
    'tutorOverride',
  );
  @override
  late final GeneratedColumn<String> tutorOverride = GeneratedColumn<String>(
    'tutor_override',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _showHighlightsMeta = const VerificationMeta(
    'showHighlights',
  );
  @override
  late final GeneratedColumn<bool> showHighlights = GeneratedColumn<bool>(
    'show_highlights',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("show_highlights" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _enableDragMeta = const VerificationMeta(
    'enableDrag',
  );
  @override
  late final GeneratedColumn<bool> enableDrag = GeneratedColumn<bool>(
    'enable_drag',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("enable_drag" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _enableCombinedTapsMeta =
      const VerificationMeta('enableCombinedTaps');
  @override
  late final GeneratedColumn<bool> enableCombinedTaps = GeneratedColumn<bool>(
    'enable_combined_taps',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("enable_combined_taps" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _showScoringMeta = const VerificationMeta(
    'showScoring',
  );
  @override
  late final GeneratedColumn<bool> showScoring = GeneratedColumn<bool>(
    'show_scoring',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("show_scoring" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _diceRollAnimationMeta = const VerificationMeta(
    'diceRollAnimation',
  );
  @override
  late final GeneratedColumn<bool> diceRollAnimation = GeneratedColumn<bool>(
    'dice_roll_animation',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("dice_roll_animation" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _showPassDeviceMeta = const VerificationMeta(
    'showPassDevice',
  );
  @override
  late final GeneratedColumn<bool> showPassDevice = GeneratedColumn<bool>(
    'show_pass_device',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("show_pass_device" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _rotateBoardHotSeatMeta =
      const VerificationMeta('rotateBoardHotSeat');
  @override
  late final GeneratedColumn<bool> rotateBoardHotSeat = GeneratedColumn<bool>(
    'rotate_board_hot_seat',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("rotate_board_hot_seat" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _dragHintShownMeta = const VerificationMeta(
    'dragHintShown',
  );
  @override
  late final GeneratedColumn<bool> dragHintShown = GeneratedColumn<bool>(
    'drag_hint_shown',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("drag_hint_shown" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _buddyPhrasingMeta = const VerificationMeta(
    'buddyPhrasing',
  );
  @override
  late final GeneratedColumn<String> buddyPhrasing = GeneratedColumn<String>(
    'buddy_phrasing',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('terse'),
  );
  static const VerificationMeta _buddyMicHintMeta = const VerificationMeta(
    'buddyMicHint',
  );
  @override
  late final GeneratedColumn<bool> buddyMicHint = GeneratedColumn<bool>(
    'buddy_mic_hint',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("buddy_mic_hint" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _tutorBestMovesMeta = const VerificationMeta(
    'tutorBestMoves',
  );
  @override
  late final GeneratedColumn<bool> tutorBestMoves = GeneratedColumn<bool>(
    'tutor_best_moves',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("tutor_best_moves" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _tutorExplanationsMeta = const VerificationMeta(
    'tutorExplanations',
  );
  @override
  late final GeneratedColumn<bool> tutorExplanations = GeneratedColumn<bool>(
    'tutor_explanations',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("tutor_explanations" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _tutorCommentaryMeta = const VerificationMeta(
    'tutorCommentary',
  );
  @override
  late final GeneratedColumn<bool> tutorCommentary = GeneratedColumn<bool>(
    'tutor_commentary',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("tutor_commentary" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _tutorCubeAdviceMeta = const VerificationMeta(
    'tutorCubeAdvice',
  );
  @override
  late final GeneratedColumn<bool> tutorCubeAdvice = GeneratedColumn<bool>(
    'tutor_cube_advice',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("tutor_cube_advice" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _tutorTryFirstMeta = const VerificationMeta(
    'tutorTryFirst',
  );
  @override
  late final GeneratedColumn<bool> tutorTryFirst = GeneratedColumn<bool>(
    'tutor_try_first',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("tutor_try_first" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _telemetryEnabledMeta = const VerificationMeta(
    'telemetryEnabled',
  );
  @override
  late final GeneratedColumn<bool> telemetryEnabled = GeneratedColumn<bool>(
    'telemetry_enabled',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("telemetry_enabled" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    themeMode,
    animationSpeed,
    defaultMatchLength,
    defaultDifficulty,
    tutorOverride,
    showHighlights,
    enableDrag,
    enableCombinedTaps,
    showScoring,
    diceRollAnimation,
    showPassDevice,
    rotateBoardHotSeat,
    dragHintShown,
    buddyPhrasing,
    buddyMicHint,
    tutorBestMoves,
    tutorExplanations,
    tutorCommentary,
    tutorCubeAdvice,
    tutorTryFirst,
    telemetryEnabled,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'settings';
  @override
  VerificationContext validateIntegrity(
    Insertable<SettingsRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('theme_mode')) {
      context.handle(
        _themeModeMeta,
        themeMode.isAcceptableOrUnknown(data['theme_mode']!, _themeModeMeta),
      );
    }
    if (data.containsKey('animation_speed')) {
      context.handle(
        _animationSpeedMeta,
        animationSpeed.isAcceptableOrUnknown(
          data['animation_speed']!,
          _animationSpeedMeta,
        ),
      );
    }
    if (data.containsKey('default_match_length')) {
      context.handle(
        _defaultMatchLengthMeta,
        defaultMatchLength.isAcceptableOrUnknown(
          data['default_match_length']!,
          _defaultMatchLengthMeta,
        ),
      );
    }
    if (data.containsKey('default_difficulty')) {
      context.handle(
        _defaultDifficultyMeta,
        defaultDifficulty.isAcceptableOrUnknown(
          data['default_difficulty']!,
          _defaultDifficultyMeta,
        ),
      );
    }
    if (data.containsKey('tutor_override')) {
      context.handle(
        _tutorOverrideMeta,
        tutorOverride.isAcceptableOrUnknown(
          data['tutor_override']!,
          _tutorOverrideMeta,
        ),
      );
    }
    if (data.containsKey('show_highlights')) {
      context.handle(
        _showHighlightsMeta,
        showHighlights.isAcceptableOrUnknown(
          data['show_highlights']!,
          _showHighlightsMeta,
        ),
      );
    }
    if (data.containsKey('enable_drag')) {
      context.handle(
        _enableDragMeta,
        enableDrag.isAcceptableOrUnknown(data['enable_drag']!, _enableDragMeta),
      );
    }
    if (data.containsKey('enable_combined_taps')) {
      context.handle(
        _enableCombinedTapsMeta,
        enableCombinedTaps.isAcceptableOrUnknown(
          data['enable_combined_taps']!,
          _enableCombinedTapsMeta,
        ),
      );
    }
    if (data.containsKey('show_scoring')) {
      context.handle(
        _showScoringMeta,
        showScoring.isAcceptableOrUnknown(
          data['show_scoring']!,
          _showScoringMeta,
        ),
      );
    }
    if (data.containsKey('dice_roll_animation')) {
      context.handle(
        _diceRollAnimationMeta,
        diceRollAnimation.isAcceptableOrUnknown(
          data['dice_roll_animation']!,
          _diceRollAnimationMeta,
        ),
      );
    }
    if (data.containsKey('show_pass_device')) {
      context.handle(
        _showPassDeviceMeta,
        showPassDevice.isAcceptableOrUnknown(
          data['show_pass_device']!,
          _showPassDeviceMeta,
        ),
      );
    }
    if (data.containsKey('rotate_board_hot_seat')) {
      context.handle(
        _rotateBoardHotSeatMeta,
        rotateBoardHotSeat.isAcceptableOrUnknown(
          data['rotate_board_hot_seat']!,
          _rotateBoardHotSeatMeta,
        ),
      );
    }
    if (data.containsKey('drag_hint_shown')) {
      context.handle(
        _dragHintShownMeta,
        dragHintShown.isAcceptableOrUnknown(
          data['drag_hint_shown']!,
          _dragHintShownMeta,
        ),
      );
    }
    if (data.containsKey('buddy_phrasing')) {
      context.handle(
        _buddyPhrasingMeta,
        buddyPhrasing.isAcceptableOrUnknown(
          data['buddy_phrasing']!,
          _buddyPhrasingMeta,
        ),
      );
    }
    if (data.containsKey('buddy_mic_hint')) {
      context.handle(
        _buddyMicHintMeta,
        buddyMicHint.isAcceptableOrUnknown(
          data['buddy_mic_hint']!,
          _buddyMicHintMeta,
        ),
      );
    }
    if (data.containsKey('tutor_best_moves')) {
      context.handle(
        _tutorBestMovesMeta,
        tutorBestMoves.isAcceptableOrUnknown(
          data['tutor_best_moves']!,
          _tutorBestMovesMeta,
        ),
      );
    }
    if (data.containsKey('tutor_explanations')) {
      context.handle(
        _tutorExplanationsMeta,
        tutorExplanations.isAcceptableOrUnknown(
          data['tutor_explanations']!,
          _tutorExplanationsMeta,
        ),
      );
    }
    if (data.containsKey('tutor_commentary')) {
      context.handle(
        _tutorCommentaryMeta,
        tutorCommentary.isAcceptableOrUnknown(
          data['tutor_commentary']!,
          _tutorCommentaryMeta,
        ),
      );
    }
    if (data.containsKey('tutor_cube_advice')) {
      context.handle(
        _tutorCubeAdviceMeta,
        tutorCubeAdvice.isAcceptableOrUnknown(
          data['tutor_cube_advice']!,
          _tutorCubeAdviceMeta,
        ),
      );
    }
    if (data.containsKey('tutor_try_first')) {
      context.handle(
        _tutorTryFirstMeta,
        tutorTryFirst.isAcceptableOrUnknown(
          data['tutor_try_first']!,
          _tutorTryFirstMeta,
        ),
      );
    }
    if (data.containsKey('telemetry_enabled')) {
      context.handle(
        _telemetryEnabledMeta,
        telemetryEnabled.isAcceptableOrUnknown(
          data['telemetry_enabled']!,
          _telemetryEnabledMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SettingsRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingsRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      themeMode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}theme_mode'],
      )!,
      animationSpeed: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}animation_speed'],
      )!,
      defaultMatchLength: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}default_match_length'],
      )!,
      defaultDifficulty: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}default_difficulty'],
      )!,
      tutorOverride: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tutor_override'],
      ),
      showHighlights: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}show_highlights'],
      )!,
      enableDrag: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}enable_drag'],
      )!,
      enableCombinedTaps: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}enable_combined_taps'],
      )!,
      showScoring: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}show_scoring'],
      )!,
      diceRollAnimation: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}dice_roll_animation'],
      )!,
      showPassDevice: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}show_pass_device'],
      )!,
      rotateBoardHotSeat: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}rotate_board_hot_seat'],
      )!,
      dragHintShown: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}drag_hint_shown'],
      )!,
      buddyPhrasing: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}buddy_phrasing'],
      )!,
      buddyMicHint: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}buddy_mic_hint'],
      )!,
      tutorBestMoves: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}tutor_best_moves'],
      )!,
      tutorExplanations: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}tutor_explanations'],
      )!,
      tutorCommentary: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}tutor_commentary'],
      )!,
      tutorCubeAdvice: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}tutor_cube_advice'],
      )!,
      tutorTryFirst: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}tutor_try_first'],
      )!,
      telemetryEnabled: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}telemetry_enabled'],
      )!,
    );
  }

  @override
  $SettingsTable createAlias(String alias) {
    return $SettingsTable(attachedDatabase, alias);
  }
}

class SettingsRow extends DataClass implements Insertable<SettingsRow> {
  /// Always 1 (enforced by [customConstraints]). Defaulted so a bare
  /// `INSERT (id) VALUES (1)` fills every other column from its default.
  final int id;
  final String themeMode;
  final String animationSpeed;
  final int defaultMatchLength;
  final String defaultDifficulty;

  /// 'on' | 'off' | null (null = per-mode tutor default).
  final String? tutorOverride;

  /// Gameplay option toggles (schema v3). Everything besides the base tap-to-move
  /// play is optional (see Plan 7 Task 5).
  /// Whether the board paints selection rings and destination highlights.
  final bool showHighlights;

  /// Whether drag-to-move is enabled. ON by default as of schema v4: drag was
  /// too easy to miss when it shipped opt-in (Plan 7 Task 4), so tap AND drag
  /// are both first-class now. Tap-to-move still works regardless.
  final bool enableDrag;

  /// Whether combined (multi-hop, same-checker) landing taps are enabled.
  final bool enableCombinedTaps;

  /// Whether the HUD shows the running match score.
  final bool showScoring;

  /// Whether each roll tumbles before it settles (schema v5). ON by default —
  /// the beat is the app's roll feedback, and its absence was reported as a
  /// regression ("there is no dice animation now"). Turning it off makes every
  /// roll appear settled immediately; checker travel is unaffected (that is
  /// [animationSpeed]).
  final bool diceRollAnimation;

  /// Whether the hot-seat "Pass the device" cover screen is shown between turns
  /// (schema v6). OFF by default, per the reported "when playing with two
  /// persons, do not show the pass the device screen, or at least make it a
  /// setting, disabled by default". With it off the board simply flips to the
  /// new actor — that rotation IS the hand-over cue — and nothing has to be
  /// tapped through. Only ever consulted in a hot-seat match.
  final bool showPassDevice;

  /// Whether a hot-seat match FLIPS the board between turns so the active player
  /// is always at the bottom (schema v7). OFF by default, per the reported "when
  /// playing person vs person, the default should be not flipping the board.
  /// People will share the device at each side, place action buttons for each
  /// player, and keep the board fixed".
  ///
  /// Off (the default) is the TABLETOP layout: the board is pinned White-at-
  /// bottom for the whole match and each player acts from their own edge (the
  /// top player's action bar is rendered upside-down for them). On restores the
  /// pre-v7 behaviour — one bottom action bar, and the board rotating to
  /// whoever is on turn. Only ever consulted in a hot-seat match.
  final bool rotateBoardHotSeat;

  /// Whether the one-time "you can drag OR tap checkers" discoverability hint
  /// has already been surfaced (schema v4). Flipped true the first time the hint
  /// shows, so it never appears twice. Starts false on a fresh install.
  final bool dragHintShown;

  /// How Buddy words a play out loud (schema v9): a `BuddyPhrasing.name`,
  /// 'terse' or 'friendly'. Stored by name like [themeMode] and friends, and
  /// read tolerantly, so an unknown string falls back to the default rather
  /// than throwing.
  ///
  /// The DEFAULT for a Buddy session rather than the session's own setting: the
  /// setup screen seeds its per-match choice from this and does not write back,
  /// exactly as it does for [defaultMatchLength] and [defaultDifficulty].
  final String buddyPhrasing;

  /// Whether Buddy may listen for the dice landing (schema v9). ON by default,
  /// and it is both halves of one thing: the user's preference, and the
  /// REMEMBERED REFUSAL.
  ///
  /// Buddy asks the operating system for the microphone in context — the first
  /// time a throw is actually being waited for — and a refusal latches this
  /// false, which is what stops the mode asking again every match. A single
  /// flag rather than a preference plus a hidden "already refused" bit, because
  /// two flags would leave a user who refused once and later granted the
  /// permission in system settings with no way back: there would be nothing on
  /// screen to turn on. This there is.
  ///
  /// Off changes nothing about how a match plays. The hint only ever tells the
  /// frame gate to look sooner — see `lib/buddy/dice_sound_trigger.dart`.
  final bool buddyMicHint;

  /// Persistent tutor defaults (v10); match-specific changes do not overwrite
  /// these unless explicitly saved through Settings.
  final bool tutorBestMoves;
  final bool tutorExplanations;
  final bool tutorCommentary;
  final bool tutorCubeAdvice;
  final bool tutorTryFirst;

  /// Optional remote analytics/performance/crash reporting is opt-in.
  final bool telemetryEnabled;
  const SettingsRow({
    required this.id,
    required this.themeMode,
    required this.animationSpeed,
    required this.defaultMatchLength,
    required this.defaultDifficulty,
    this.tutorOverride,
    required this.showHighlights,
    required this.enableDrag,
    required this.enableCombinedTaps,
    required this.showScoring,
    required this.diceRollAnimation,
    required this.showPassDevice,
    required this.rotateBoardHotSeat,
    required this.dragHintShown,
    required this.buddyPhrasing,
    required this.buddyMicHint,
    required this.tutorBestMoves,
    required this.tutorExplanations,
    required this.tutorCommentary,
    required this.tutorCubeAdvice,
    required this.tutorTryFirst,
    required this.telemetryEnabled,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['theme_mode'] = Variable<String>(themeMode);
    map['animation_speed'] = Variable<String>(animationSpeed);
    map['default_match_length'] = Variable<int>(defaultMatchLength);
    map['default_difficulty'] = Variable<String>(defaultDifficulty);
    if (!nullToAbsent || tutorOverride != null) {
      map['tutor_override'] = Variable<String>(tutorOverride);
    }
    map['show_highlights'] = Variable<bool>(showHighlights);
    map['enable_drag'] = Variable<bool>(enableDrag);
    map['enable_combined_taps'] = Variable<bool>(enableCombinedTaps);
    map['show_scoring'] = Variable<bool>(showScoring);
    map['dice_roll_animation'] = Variable<bool>(diceRollAnimation);
    map['show_pass_device'] = Variable<bool>(showPassDevice);
    map['rotate_board_hot_seat'] = Variable<bool>(rotateBoardHotSeat);
    map['drag_hint_shown'] = Variable<bool>(dragHintShown);
    map['buddy_phrasing'] = Variable<String>(buddyPhrasing);
    map['buddy_mic_hint'] = Variable<bool>(buddyMicHint);
    map['tutor_best_moves'] = Variable<bool>(tutorBestMoves);
    map['tutor_explanations'] = Variable<bool>(tutorExplanations);
    map['tutor_commentary'] = Variable<bool>(tutorCommentary);
    map['tutor_cube_advice'] = Variable<bool>(tutorCubeAdvice);
    map['tutor_try_first'] = Variable<bool>(tutorTryFirst);
    map['telemetry_enabled'] = Variable<bool>(telemetryEnabled);
    return map;
  }

  SettingsCompanion toCompanion(bool nullToAbsent) {
    return SettingsCompanion(
      id: Value(id),
      themeMode: Value(themeMode),
      animationSpeed: Value(animationSpeed),
      defaultMatchLength: Value(defaultMatchLength),
      defaultDifficulty: Value(defaultDifficulty),
      tutorOverride: tutorOverride == null && nullToAbsent
          ? const Value.absent()
          : Value(tutorOverride),
      showHighlights: Value(showHighlights),
      enableDrag: Value(enableDrag),
      enableCombinedTaps: Value(enableCombinedTaps),
      showScoring: Value(showScoring),
      diceRollAnimation: Value(diceRollAnimation),
      showPassDevice: Value(showPassDevice),
      rotateBoardHotSeat: Value(rotateBoardHotSeat),
      dragHintShown: Value(dragHintShown),
      buddyPhrasing: Value(buddyPhrasing),
      buddyMicHint: Value(buddyMicHint),
      tutorBestMoves: Value(tutorBestMoves),
      tutorExplanations: Value(tutorExplanations),
      tutorCommentary: Value(tutorCommentary),
      tutorCubeAdvice: Value(tutorCubeAdvice),
      tutorTryFirst: Value(tutorTryFirst),
      telemetryEnabled: Value(telemetryEnabled),
    );
  }

  factory SettingsRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingsRow(
      id: serializer.fromJson<int>(json['id']),
      themeMode: serializer.fromJson<String>(json['themeMode']),
      animationSpeed: serializer.fromJson<String>(json['animationSpeed']),
      defaultMatchLength: serializer.fromJson<int>(json['defaultMatchLength']),
      defaultDifficulty: serializer.fromJson<String>(json['defaultDifficulty']),
      tutorOverride: serializer.fromJson<String?>(json['tutorOverride']),
      showHighlights: serializer.fromJson<bool>(json['showHighlights']),
      enableDrag: serializer.fromJson<bool>(json['enableDrag']),
      enableCombinedTaps: serializer.fromJson<bool>(json['enableCombinedTaps']),
      showScoring: serializer.fromJson<bool>(json['showScoring']),
      diceRollAnimation: serializer.fromJson<bool>(json['diceRollAnimation']),
      showPassDevice: serializer.fromJson<bool>(json['showPassDevice']),
      rotateBoardHotSeat: serializer.fromJson<bool>(json['rotateBoardHotSeat']),
      dragHintShown: serializer.fromJson<bool>(json['dragHintShown']),
      buddyPhrasing: serializer.fromJson<String>(json['buddyPhrasing']),
      buddyMicHint: serializer.fromJson<bool>(json['buddyMicHint']),
      tutorBestMoves: serializer.fromJson<bool>(json['tutorBestMoves']),
      tutorExplanations: serializer.fromJson<bool>(json['tutorExplanations']),
      tutorCommentary: serializer.fromJson<bool>(json['tutorCommentary']),
      tutorCubeAdvice: serializer.fromJson<bool>(json['tutorCubeAdvice']),
      tutorTryFirst: serializer.fromJson<bool>(json['tutorTryFirst']),
      telemetryEnabled: serializer.fromJson<bool>(json['telemetryEnabled']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'themeMode': serializer.toJson<String>(themeMode),
      'animationSpeed': serializer.toJson<String>(animationSpeed),
      'defaultMatchLength': serializer.toJson<int>(defaultMatchLength),
      'defaultDifficulty': serializer.toJson<String>(defaultDifficulty),
      'tutorOverride': serializer.toJson<String?>(tutorOverride),
      'showHighlights': serializer.toJson<bool>(showHighlights),
      'enableDrag': serializer.toJson<bool>(enableDrag),
      'enableCombinedTaps': serializer.toJson<bool>(enableCombinedTaps),
      'showScoring': serializer.toJson<bool>(showScoring),
      'diceRollAnimation': serializer.toJson<bool>(diceRollAnimation),
      'showPassDevice': serializer.toJson<bool>(showPassDevice),
      'rotateBoardHotSeat': serializer.toJson<bool>(rotateBoardHotSeat),
      'dragHintShown': serializer.toJson<bool>(dragHintShown),
      'buddyPhrasing': serializer.toJson<String>(buddyPhrasing),
      'buddyMicHint': serializer.toJson<bool>(buddyMicHint),
      'tutorBestMoves': serializer.toJson<bool>(tutorBestMoves),
      'tutorExplanations': serializer.toJson<bool>(tutorExplanations),
      'tutorCommentary': serializer.toJson<bool>(tutorCommentary),
      'tutorCubeAdvice': serializer.toJson<bool>(tutorCubeAdvice),
      'tutorTryFirst': serializer.toJson<bool>(tutorTryFirst),
      'telemetryEnabled': serializer.toJson<bool>(telemetryEnabled),
    };
  }

  SettingsRow copyWith({
    int? id,
    String? themeMode,
    String? animationSpeed,
    int? defaultMatchLength,
    String? defaultDifficulty,
    Value<String?> tutorOverride = const Value.absent(),
    bool? showHighlights,
    bool? enableDrag,
    bool? enableCombinedTaps,
    bool? showScoring,
    bool? diceRollAnimation,
    bool? showPassDevice,
    bool? rotateBoardHotSeat,
    bool? dragHintShown,
    String? buddyPhrasing,
    bool? buddyMicHint,
    bool? tutorBestMoves,
    bool? tutorExplanations,
    bool? tutorCommentary,
    bool? tutorCubeAdvice,
    bool? tutorTryFirst,
    bool? telemetryEnabled,
  }) => SettingsRow(
    id: id ?? this.id,
    themeMode: themeMode ?? this.themeMode,
    animationSpeed: animationSpeed ?? this.animationSpeed,
    defaultMatchLength: defaultMatchLength ?? this.defaultMatchLength,
    defaultDifficulty: defaultDifficulty ?? this.defaultDifficulty,
    tutorOverride: tutorOverride.present
        ? tutorOverride.value
        : this.tutorOverride,
    showHighlights: showHighlights ?? this.showHighlights,
    enableDrag: enableDrag ?? this.enableDrag,
    enableCombinedTaps: enableCombinedTaps ?? this.enableCombinedTaps,
    showScoring: showScoring ?? this.showScoring,
    diceRollAnimation: diceRollAnimation ?? this.diceRollAnimation,
    showPassDevice: showPassDevice ?? this.showPassDevice,
    rotateBoardHotSeat: rotateBoardHotSeat ?? this.rotateBoardHotSeat,
    dragHintShown: dragHintShown ?? this.dragHintShown,
    buddyPhrasing: buddyPhrasing ?? this.buddyPhrasing,
    buddyMicHint: buddyMicHint ?? this.buddyMicHint,
    tutorBestMoves: tutorBestMoves ?? this.tutorBestMoves,
    tutorExplanations: tutorExplanations ?? this.tutorExplanations,
    tutorCommentary: tutorCommentary ?? this.tutorCommentary,
    tutorCubeAdvice: tutorCubeAdvice ?? this.tutorCubeAdvice,
    tutorTryFirst: tutorTryFirst ?? this.tutorTryFirst,
    telemetryEnabled: telemetryEnabled ?? this.telemetryEnabled,
  );
  SettingsRow copyWithCompanion(SettingsCompanion data) {
    return SettingsRow(
      id: data.id.present ? data.id.value : this.id,
      themeMode: data.themeMode.present ? data.themeMode.value : this.themeMode,
      animationSpeed: data.animationSpeed.present
          ? data.animationSpeed.value
          : this.animationSpeed,
      defaultMatchLength: data.defaultMatchLength.present
          ? data.defaultMatchLength.value
          : this.defaultMatchLength,
      defaultDifficulty: data.defaultDifficulty.present
          ? data.defaultDifficulty.value
          : this.defaultDifficulty,
      tutorOverride: data.tutorOverride.present
          ? data.tutorOverride.value
          : this.tutorOverride,
      showHighlights: data.showHighlights.present
          ? data.showHighlights.value
          : this.showHighlights,
      enableDrag: data.enableDrag.present
          ? data.enableDrag.value
          : this.enableDrag,
      enableCombinedTaps: data.enableCombinedTaps.present
          ? data.enableCombinedTaps.value
          : this.enableCombinedTaps,
      showScoring: data.showScoring.present
          ? data.showScoring.value
          : this.showScoring,
      diceRollAnimation: data.diceRollAnimation.present
          ? data.diceRollAnimation.value
          : this.diceRollAnimation,
      showPassDevice: data.showPassDevice.present
          ? data.showPassDevice.value
          : this.showPassDevice,
      rotateBoardHotSeat: data.rotateBoardHotSeat.present
          ? data.rotateBoardHotSeat.value
          : this.rotateBoardHotSeat,
      dragHintShown: data.dragHintShown.present
          ? data.dragHintShown.value
          : this.dragHintShown,
      buddyPhrasing: data.buddyPhrasing.present
          ? data.buddyPhrasing.value
          : this.buddyPhrasing,
      buddyMicHint: data.buddyMicHint.present
          ? data.buddyMicHint.value
          : this.buddyMicHint,
      tutorBestMoves: data.tutorBestMoves.present
          ? data.tutorBestMoves.value
          : this.tutorBestMoves,
      tutorExplanations: data.tutorExplanations.present
          ? data.tutorExplanations.value
          : this.tutorExplanations,
      tutorCommentary: data.tutorCommentary.present
          ? data.tutorCommentary.value
          : this.tutorCommentary,
      tutorCubeAdvice: data.tutorCubeAdvice.present
          ? data.tutorCubeAdvice.value
          : this.tutorCubeAdvice,
      tutorTryFirst: data.tutorTryFirst.present
          ? data.tutorTryFirst.value
          : this.tutorTryFirst,
      telemetryEnabled: data.telemetryEnabled.present
          ? data.telemetryEnabled.value
          : this.telemetryEnabled,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SettingsRow(')
          ..write('id: $id, ')
          ..write('themeMode: $themeMode, ')
          ..write('animationSpeed: $animationSpeed, ')
          ..write('defaultMatchLength: $defaultMatchLength, ')
          ..write('defaultDifficulty: $defaultDifficulty, ')
          ..write('tutorOverride: $tutorOverride, ')
          ..write('showHighlights: $showHighlights, ')
          ..write('enableDrag: $enableDrag, ')
          ..write('enableCombinedTaps: $enableCombinedTaps, ')
          ..write('showScoring: $showScoring, ')
          ..write('diceRollAnimation: $diceRollAnimation, ')
          ..write('showPassDevice: $showPassDevice, ')
          ..write('rotateBoardHotSeat: $rotateBoardHotSeat, ')
          ..write('dragHintShown: $dragHintShown, ')
          ..write('buddyPhrasing: $buddyPhrasing, ')
          ..write('buddyMicHint: $buddyMicHint, ')
          ..write('tutorBestMoves: $tutorBestMoves, ')
          ..write('tutorExplanations: $tutorExplanations, ')
          ..write('tutorCommentary: $tutorCommentary, ')
          ..write('tutorCubeAdvice: $tutorCubeAdvice, ')
          ..write('tutorTryFirst: $tutorTryFirst, ')
          ..write('telemetryEnabled: $telemetryEnabled')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    themeMode,
    animationSpeed,
    defaultMatchLength,
    defaultDifficulty,
    tutorOverride,
    showHighlights,
    enableDrag,
    enableCombinedTaps,
    showScoring,
    diceRollAnimation,
    showPassDevice,
    rotateBoardHotSeat,
    dragHintShown,
    buddyPhrasing,
    buddyMicHint,
    tutorBestMoves,
    tutorExplanations,
    tutorCommentary,
    tutorCubeAdvice,
    tutorTryFirst,
    telemetryEnabled,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingsRow &&
          other.id == this.id &&
          other.themeMode == this.themeMode &&
          other.animationSpeed == this.animationSpeed &&
          other.defaultMatchLength == this.defaultMatchLength &&
          other.defaultDifficulty == this.defaultDifficulty &&
          other.tutorOverride == this.tutorOverride &&
          other.showHighlights == this.showHighlights &&
          other.enableDrag == this.enableDrag &&
          other.enableCombinedTaps == this.enableCombinedTaps &&
          other.showScoring == this.showScoring &&
          other.diceRollAnimation == this.diceRollAnimation &&
          other.showPassDevice == this.showPassDevice &&
          other.rotateBoardHotSeat == this.rotateBoardHotSeat &&
          other.dragHintShown == this.dragHintShown &&
          other.buddyPhrasing == this.buddyPhrasing &&
          other.buddyMicHint == this.buddyMicHint &&
          other.tutorBestMoves == this.tutorBestMoves &&
          other.tutorExplanations == this.tutorExplanations &&
          other.tutorCommentary == this.tutorCommentary &&
          other.tutorCubeAdvice == this.tutorCubeAdvice &&
          other.tutorTryFirst == this.tutorTryFirst &&
          other.telemetryEnabled == this.telemetryEnabled);
}

class SettingsCompanion extends UpdateCompanion<SettingsRow> {
  final Value<int> id;
  final Value<String> themeMode;
  final Value<String> animationSpeed;
  final Value<int> defaultMatchLength;
  final Value<String> defaultDifficulty;
  final Value<String?> tutorOverride;
  final Value<bool> showHighlights;
  final Value<bool> enableDrag;
  final Value<bool> enableCombinedTaps;
  final Value<bool> showScoring;
  final Value<bool> diceRollAnimation;
  final Value<bool> showPassDevice;
  final Value<bool> rotateBoardHotSeat;
  final Value<bool> dragHintShown;
  final Value<String> buddyPhrasing;
  final Value<bool> buddyMicHint;
  final Value<bool> tutorBestMoves;
  final Value<bool> tutorExplanations;
  final Value<bool> tutorCommentary;
  final Value<bool> tutorCubeAdvice;
  final Value<bool> tutorTryFirst;
  final Value<bool> telemetryEnabled;
  const SettingsCompanion({
    this.id = const Value.absent(),
    this.themeMode = const Value.absent(),
    this.animationSpeed = const Value.absent(),
    this.defaultMatchLength = const Value.absent(),
    this.defaultDifficulty = const Value.absent(),
    this.tutorOverride = const Value.absent(),
    this.showHighlights = const Value.absent(),
    this.enableDrag = const Value.absent(),
    this.enableCombinedTaps = const Value.absent(),
    this.showScoring = const Value.absent(),
    this.diceRollAnimation = const Value.absent(),
    this.showPassDevice = const Value.absent(),
    this.rotateBoardHotSeat = const Value.absent(),
    this.dragHintShown = const Value.absent(),
    this.buddyPhrasing = const Value.absent(),
    this.buddyMicHint = const Value.absent(),
    this.tutorBestMoves = const Value.absent(),
    this.tutorExplanations = const Value.absent(),
    this.tutorCommentary = const Value.absent(),
    this.tutorCubeAdvice = const Value.absent(),
    this.tutorTryFirst = const Value.absent(),
    this.telemetryEnabled = const Value.absent(),
  });
  SettingsCompanion.insert({
    this.id = const Value.absent(),
    this.themeMode = const Value.absent(),
    this.animationSpeed = const Value.absent(),
    this.defaultMatchLength = const Value.absent(),
    this.defaultDifficulty = const Value.absent(),
    this.tutorOverride = const Value.absent(),
    this.showHighlights = const Value.absent(),
    this.enableDrag = const Value.absent(),
    this.enableCombinedTaps = const Value.absent(),
    this.showScoring = const Value.absent(),
    this.diceRollAnimation = const Value.absent(),
    this.showPassDevice = const Value.absent(),
    this.rotateBoardHotSeat = const Value.absent(),
    this.dragHintShown = const Value.absent(),
    this.buddyPhrasing = const Value.absent(),
    this.buddyMicHint = const Value.absent(),
    this.tutorBestMoves = const Value.absent(),
    this.tutorExplanations = const Value.absent(),
    this.tutorCommentary = const Value.absent(),
    this.tutorCubeAdvice = const Value.absent(),
    this.tutorTryFirst = const Value.absent(),
    this.telemetryEnabled = const Value.absent(),
  });
  static Insertable<SettingsRow> custom({
    Expression<int>? id,
    Expression<String>? themeMode,
    Expression<String>? animationSpeed,
    Expression<int>? defaultMatchLength,
    Expression<String>? defaultDifficulty,
    Expression<String>? tutorOverride,
    Expression<bool>? showHighlights,
    Expression<bool>? enableDrag,
    Expression<bool>? enableCombinedTaps,
    Expression<bool>? showScoring,
    Expression<bool>? diceRollAnimation,
    Expression<bool>? showPassDevice,
    Expression<bool>? rotateBoardHotSeat,
    Expression<bool>? dragHintShown,
    Expression<String>? buddyPhrasing,
    Expression<bool>? buddyMicHint,
    Expression<bool>? tutorBestMoves,
    Expression<bool>? tutorExplanations,
    Expression<bool>? tutorCommentary,
    Expression<bool>? tutorCubeAdvice,
    Expression<bool>? tutorTryFirst,
    Expression<bool>? telemetryEnabled,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (themeMode != null) 'theme_mode': themeMode,
      if (animationSpeed != null) 'animation_speed': animationSpeed,
      if (defaultMatchLength != null)
        'default_match_length': defaultMatchLength,
      if (defaultDifficulty != null) 'default_difficulty': defaultDifficulty,
      if (tutorOverride != null) 'tutor_override': tutorOverride,
      if (showHighlights != null) 'show_highlights': showHighlights,
      if (enableDrag != null) 'enable_drag': enableDrag,
      if (enableCombinedTaps != null)
        'enable_combined_taps': enableCombinedTaps,
      if (showScoring != null) 'show_scoring': showScoring,
      if (diceRollAnimation != null) 'dice_roll_animation': diceRollAnimation,
      if (showPassDevice != null) 'show_pass_device': showPassDevice,
      if (rotateBoardHotSeat != null)
        'rotate_board_hot_seat': rotateBoardHotSeat,
      if (dragHintShown != null) 'drag_hint_shown': dragHintShown,
      if (buddyPhrasing != null) 'buddy_phrasing': buddyPhrasing,
      if (buddyMicHint != null) 'buddy_mic_hint': buddyMicHint,
      if (tutorBestMoves != null) 'tutor_best_moves': tutorBestMoves,
      if (tutorExplanations != null) 'tutor_explanations': tutorExplanations,
      if (tutorCommentary != null) 'tutor_commentary': tutorCommentary,
      if (tutorCubeAdvice != null) 'tutor_cube_advice': tutorCubeAdvice,
      if (tutorTryFirst != null) 'tutor_try_first': tutorTryFirst,
      if (telemetryEnabled != null) 'telemetry_enabled': telemetryEnabled,
    });
  }

  SettingsCompanion copyWith({
    Value<int>? id,
    Value<String>? themeMode,
    Value<String>? animationSpeed,
    Value<int>? defaultMatchLength,
    Value<String>? defaultDifficulty,
    Value<String?>? tutorOverride,
    Value<bool>? showHighlights,
    Value<bool>? enableDrag,
    Value<bool>? enableCombinedTaps,
    Value<bool>? showScoring,
    Value<bool>? diceRollAnimation,
    Value<bool>? showPassDevice,
    Value<bool>? rotateBoardHotSeat,
    Value<bool>? dragHintShown,
    Value<String>? buddyPhrasing,
    Value<bool>? buddyMicHint,
    Value<bool>? tutorBestMoves,
    Value<bool>? tutorExplanations,
    Value<bool>? tutorCommentary,
    Value<bool>? tutorCubeAdvice,
    Value<bool>? tutorTryFirst,
    Value<bool>? telemetryEnabled,
  }) {
    return SettingsCompanion(
      id: id ?? this.id,
      themeMode: themeMode ?? this.themeMode,
      animationSpeed: animationSpeed ?? this.animationSpeed,
      defaultMatchLength: defaultMatchLength ?? this.defaultMatchLength,
      defaultDifficulty: defaultDifficulty ?? this.defaultDifficulty,
      tutorOverride: tutorOverride ?? this.tutorOverride,
      showHighlights: showHighlights ?? this.showHighlights,
      enableDrag: enableDrag ?? this.enableDrag,
      enableCombinedTaps: enableCombinedTaps ?? this.enableCombinedTaps,
      showScoring: showScoring ?? this.showScoring,
      diceRollAnimation: diceRollAnimation ?? this.diceRollAnimation,
      showPassDevice: showPassDevice ?? this.showPassDevice,
      rotateBoardHotSeat: rotateBoardHotSeat ?? this.rotateBoardHotSeat,
      dragHintShown: dragHintShown ?? this.dragHintShown,
      buddyPhrasing: buddyPhrasing ?? this.buddyPhrasing,
      buddyMicHint: buddyMicHint ?? this.buddyMicHint,
      tutorBestMoves: tutorBestMoves ?? this.tutorBestMoves,
      tutorExplanations: tutorExplanations ?? this.tutorExplanations,
      tutorCommentary: tutorCommentary ?? this.tutorCommentary,
      tutorCubeAdvice: tutorCubeAdvice ?? this.tutorCubeAdvice,
      tutorTryFirst: tutorTryFirst ?? this.tutorTryFirst,
      telemetryEnabled: telemetryEnabled ?? this.telemetryEnabled,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (themeMode.present) {
      map['theme_mode'] = Variable<String>(themeMode.value);
    }
    if (animationSpeed.present) {
      map['animation_speed'] = Variable<String>(animationSpeed.value);
    }
    if (defaultMatchLength.present) {
      map['default_match_length'] = Variable<int>(defaultMatchLength.value);
    }
    if (defaultDifficulty.present) {
      map['default_difficulty'] = Variable<String>(defaultDifficulty.value);
    }
    if (tutorOverride.present) {
      map['tutor_override'] = Variable<String>(tutorOverride.value);
    }
    if (showHighlights.present) {
      map['show_highlights'] = Variable<bool>(showHighlights.value);
    }
    if (enableDrag.present) {
      map['enable_drag'] = Variable<bool>(enableDrag.value);
    }
    if (enableCombinedTaps.present) {
      map['enable_combined_taps'] = Variable<bool>(enableCombinedTaps.value);
    }
    if (showScoring.present) {
      map['show_scoring'] = Variable<bool>(showScoring.value);
    }
    if (diceRollAnimation.present) {
      map['dice_roll_animation'] = Variable<bool>(diceRollAnimation.value);
    }
    if (showPassDevice.present) {
      map['show_pass_device'] = Variable<bool>(showPassDevice.value);
    }
    if (rotateBoardHotSeat.present) {
      map['rotate_board_hot_seat'] = Variable<bool>(rotateBoardHotSeat.value);
    }
    if (dragHintShown.present) {
      map['drag_hint_shown'] = Variable<bool>(dragHintShown.value);
    }
    if (buddyPhrasing.present) {
      map['buddy_phrasing'] = Variable<String>(buddyPhrasing.value);
    }
    if (buddyMicHint.present) {
      map['buddy_mic_hint'] = Variable<bool>(buddyMicHint.value);
    }
    if (tutorBestMoves.present) {
      map['tutor_best_moves'] = Variable<bool>(tutorBestMoves.value);
    }
    if (tutorExplanations.present) {
      map['tutor_explanations'] = Variable<bool>(tutorExplanations.value);
    }
    if (tutorCommentary.present) {
      map['tutor_commentary'] = Variable<bool>(tutorCommentary.value);
    }
    if (tutorCubeAdvice.present) {
      map['tutor_cube_advice'] = Variable<bool>(tutorCubeAdvice.value);
    }
    if (tutorTryFirst.present) {
      map['tutor_try_first'] = Variable<bool>(tutorTryFirst.value);
    }
    if (telemetryEnabled.present) {
      map['telemetry_enabled'] = Variable<bool>(telemetryEnabled.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingsCompanion(')
          ..write('id: $id, ')
          ..write('themeMode: $themeMode, ')
          ..write('animationSpeed: $animationSpeed, ')
          ..write('defaultMatchLength: $defaultMatchLength, ')
          ..write('defaultDifficulty: $defaultDifficulty, ')
          ..write('tutorOverride: $tutorOverride, ')
          ..write('showHighlights: $showHighlights, ')
          ..write('enableDrag: $enableDrag, ')
          ..write('enableCombinedTaps: $enableCombinedTaps, ')
          ..write('showScoring: $showScoring, ')
          ..write('diceRollAnimation: $diceRollAnimation, ')
          ..write('showPassDevice: $showPassDevice, ')
          ..write('rotateBoardHotSeat: $rotateBoardHotSeat, ')
          ..write('dragHintShown: $dragHintShown, ')
          ..write('buddyPhrasing: $buddyPhrasing, ')
          ..write('buddyMicHint: $buddyMicHint, ')
          ..write('tutorBestMoves: $tutorBestMoves, ')
          ..write('tutorExplanations: $tutorExplanations, ')
          ..write('tutorCommentary: $tutorCommentary, ')
          ..write('tutorCubeAdvice: $tutorCubeAdvice, ')
          ..write('tutorTryFirst: $tutorTryFirst, ')
          ..write('telemetryEnabled: $telemetryEnabled')
          ..write(')'))
        .toString();
  }
}

class $OnlineSessionTable extends OnlineSession
    with TableInfo<$OnlineSessionTable, OnlineSessionRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OnlineSessionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
  late final GeneratedColumn<String> uid = GeneratedColumn<String>(
    'uid',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _refreshTokenMeta = const VerificationMeta(
    'refreshToken',
  );
  @override
  late final GeneratedColumn<String> refreshToken = GeneratedColumn<String>(
    'refresh_token',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _matchCodeMeta = const VerificationMeta(
    'matchCode',
  );
  @override
  late final GeneratedColumn<String> matchCode = GeneratedColumn<String>(
    'match_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, uid, refreshToken, matchCode];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'online_session';
  @override
  VerificationContext validateIntegrity(
    Insertable<OnlineSessionRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('uid')) {
      context.handle(
        _uidMeta,
        uid.isAcceptableOrUnknown(data['uid']!, _uidMeta),
      );
    }
    if (data.containsKey('refresh_token')) {
      context.handle(
        _refreshTokenMeta,
        refreshToken.isAcceptableOrUnknown(
          data['refresh_token']!,
          _refreshTokenMeta,
        ),
      );
    }
    if (data.containsKey('match_code')) {
      context.handle(
        _matchCodeMeta,
        matchCode.isAcceptableOrUnknown(data['match_code']!, _matchCodeMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OnlineSessionRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OnlineSessionRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      uid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}uid'],
      ),
      refreshToken: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}refresh_token'],
      ),
      matchCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}match_code'],
      ),
    );
  }

  @override
  $OnlineSessionTable createAlias(String alias) {
    return $OnlineSessionTable(attachedDatabase, alias);
  }
}

class OnlineSessionRow extends DataClass
    implements Insertable<OnlineSessionRow> {
  /// Always 1 (enforced by [customConstraints]).
  final int id;

  /// The anonymous Firebase uid, or null before the first sign-in.
  final String? uid;

  /// Legacy plaintext token, migrated and cleared on first read.
  final String? refreshToken;

  /// The invite code of the match this device last entered, so it can offer to
  /// REJOIN it after a restart. Cleared when that match finishes.
  final String? matchCode;
  const OnlineSessionRow({
    required this.id,
    this.uid,
    this.refreshToken,
    this.matchCode,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || uid != null) {
      map['uid'] = Variable<String>(uid);
    }
    if (!nullToAbsent || refreshToken != null) {
      map['refresh_token'] = Variable<String>(refreshToken);
    }
    if (!nullToAbsent || matchCode != null) {
      map['match_code'] = Variable<String>(matchCode);
    }
    return map;
  }

  OnlineSessionCompanion toCompanion(bool nullToAbsent) {
    return OnlineSessionCompanion(
      id: Value(id),
      uid: uid == null && nullToAbsent ? const Value.absent() : Value(uid),
      refreshToken: refreshToken == null && nullToAbsent
          ? const Value.absent()
          : Value(refreshToken),
      matchCode: matchCode == null && nullToAbsent
          ? const Value.absent()
          : Value(matchCode),
    );
  }

  factory OnlineSessionRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OnlineSessionRow(
      id: serializer.fromJson<int>(json['id']),
      uid: serializer.fromJson<String?>(json['uid']),
      refreshToken: serializer.fromJson<String?>(json['refreshToken']),
      matchCode: serializer.fromJson<String?>(json['matchCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'uid': serializer.toJson<String?>(uid),
      'refreshToken': serializer.toJson<String?>(refreshToken),
      'matchCode': serializer.toJson<String?>(matchCode),
    };
  }

  OnlineSessionRow copyWith({
    int? id,
    Value<String?> uid = const Value.absent(),
    Value<String?> refreshToken = const Value.absent(),
    Value<String?> matchCode = const Value.absent(),
  }) => OnlineSessionRow(
    id: id ?? this.id,
    uid: uid.present ? uid.value : this.uid,
    refreshToken: refreshToken.present ? refreshToken.value : this.refreshToken,
    matchCode: matchCode.present ? matchCode.value : this.matchCode,
  );
  OnlineSessionRow copyWithCompanion(OnlineSessionCompanion data) {
    return OnlineSessionRow(
      id: data.id.present ? data.id.value : this.id,
      uid: data.uid.present ? data.uid.value : this.uid,
      refreshToken: data.refreshToken.present
          ? data.refreshToken.value
          : this.refreshToken,
      matchCode: data.matchCode.present ? data.matchCode.value : this.matchCode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OnlineSessionRow(')
          ..write('id: $id, ')
          ..write('uid: $uid, ')
          ..write('refreshToken: $refreshToken, ')
          ..write('matchCode: $matchCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, uid, refreshToken, matchCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OnlineSessionRow &&
          other.id == this.id &&
          other.uid == this.uid &&
          other.refreshToken == this.refreshToken &&
          other.matchCode == this.matchCode);
}

class OnlineSessionCompanion extends UpdateCompanion<OnlineSessionRow> {
  final Value<int> id;
  final Value<String?> uid;
  final Value<String?> refreshToken;
  final Value<String?> matchCode;
  const OnlineSessionCompanion({
    this.id = const Value.absent(),
    this.uid = const Value.absent(),
    this.refreshToken = const Value.absent(),
    this.matchCode = const Value.absent(),
  });
  OnlineSessionCompanion.insert({
    this.id = const Value.absent(),
    this.uid = const Value.absent(),
    this.refreshToken = const Value.absent(),
    this.matchCode = const Value.absent(),
  });
  static Insertable<OnlineSessionRow> custom({
    Expression<int>? id,
    Expression<String>? uid,
    Expression<String>? refreshToken,
    Expression<String>? matchCode,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (uid != null) 'uid': uid,
      if (refreshToken != null) 'refresh_token': refreshToken,
      if (matchCode != null) 'match_code': matchCode,
    });
  }

  OnlineSessionCompanion copyWith({
    Value<int>? id,
    Value<String?>? uid,
    Value<String?>? refreshToken,
    Value<String?>? matchCode,
  }) {
    return OnlineSessionCompanion(
      id: id ?? this.id,
      uid: uid ?? this.uid,
      refreshToken: refreshToken ?? this.refreshToken,
      matchCode: matchCode ?? this.matchCode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (uid.present) {
      map['uid'] = Variable<String>(uid.value);
    }
    if (refreshToken.present) {
      map['refresh_token'] = Variable<String>(refreshToken.value);
    }
    if (matchCode.present) {
      map['match_code'] = Variable<String>(matchCode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OnlineSessionCompanion(')
          ..write('id: $id, ')
          ..write('uid: $uid, ')
          ..write('refreshToken: $refreshToken, ')
          ..write('matchCode: $matchCode')
          ..write(')'))
        .toString();
  }
}

class $PracticePositionsTable extends PracticePositions
    with TableInfo<$PracticePositionsTable, PracticePositionRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PracticePositionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _gameIdMeta = const VerificationMeta('gameId');
  @override
  late final GeneratedColumn<int> gameId = GeneratedColumn<int>(
    'game_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'NOT NULL REFERENCES games (id) ON DELETE CASCADE',
  );
  static const VerificationMeta _eventIndexMeta = const VerificationMeta(
    'eventIndex',
  );
  @override
  late final GeneratedColumn<int> eventIndex = GeneratedColumn<int>(
    'event_index',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _playerMeta = const VerificationMeta('player');
  @override
  late final GeneratedColumn<String> player = GeneratedColumn<String>(
    'player',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _eventsJsonMeta = const VerificationMeta(
    'eventsJson',
  );
  @override
  late final GeneratedColumn<String> eventsJson = GeneratedColumn<String>(
    'events_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isCrawfordMeta = const VerificationMeta(
    'isCrawford',
  );
  @override
  late final GeneratedColumn<bool> isCrawford = GeneratedColumn<bool>(
    'is_crawford',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_crawford" IN (0, 1))',
    ),
  );
  static const VerificationMeta _matchLengthMeta = const VerificationMeta(
    'matchLength',
  );
  @override
  late final GeneratedColumn<int> matchLength = GeneratedColumn<int>(
    'match_length',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _whiteScoreMeta = const VerificationMeta(
    'whiteScore',
  );
  @override
  late final GeneratedColumn<int> whiteScore = GeneratedColumn<int>(
    'white_score',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _blackScoreMeta = const VerificationMeta(
    'blackScore',
  );
  @override
  late final GeneratedColumn<int> blackScore = GeneratedColumn<int>(
    'black_score',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _crawfordPlayedMeta = const VerificationMeta(
    'crawfordPlayed',
  );
  @override
  late final GeneratedColumn<bool> crawfordPlayed = GeneratedColumn<bool>(
    'crawford_played',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("crawford_played" IN (0, 1))',
    ),
  );
  static const VerificationMeta _cubelessMeta = const VerificationMeta(
    'cubeless',
  );
  @override
  late final GeneratedColumn<bool> cubeless = GeneratedColumn<bool>(
    'cubeless',
    aliasedName,
    true,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("cubeless" IN (0, 1))',
    ),
  );
  static const VerificationMeta _assessmentJsonMeta = const VerificationMeta(
    'assessmentJson',
  );
  @override
  late final GeneratedColumn<String> assessmentJson = GeneratedColumn<String>(
    'assessment_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _themesJsonMeta = const VerificationMeta(
    'themesJson',
  );
  @override
  late final GeneratedColumn<String> themesJson = GeneratedColumn<String>(
    'themes_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dueAtMeta = const VerificationMeta('dueAt');
  @override
  late final GeneratedColumn<DateTime> dueAt = GeneratedColumn<DateTime>(
    'due_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _intervalDaysMeta = const VerificationMeta(
    'intervalDays',
  );
  @override
  late final GeneratedColumn<int> intervalDays = GeneratedColumn<int>(
    'interval_days',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _successStreakMeta = const VerificationMeta(
    'successStreak',
  );
  @override
  late final GeneratedColumn<int> successStreak = GeneratedColumn<int>(
    'success_streak',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _lastAttemptAtMeta = const VerificationMeta(
    'lastAttemptAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastAttemptAt =
      GeneratedColumn<DateTime>(
        'last_attempt_at',
        aliasedName,
        true,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: false,
      );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    gameId,
    eventIndex,
    createdAt,
    player,
    eventsJson,
    isCrawford,
    matchLength,
    whiteScore,
    blackScore,
    crawfordPlayed,
    cubeless,
    assessmentJson,
    themesJson,
    dueAt,
    intervalDays,
    successStreak,
    lastAttemptAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'practice_positions';
  @override
  VerificationContext validateIntegrity(
    Insertable<PracticePositionRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('game_id')) {
      context.handle(
        _gameIdMeta,
        gameId.isAcceptableOrUnknown(data['game_id']!, _gameIdMeta),
      );
    } else if (isInserting) {
      context.missing(_gameIdMeta);
    }
    if (data.containsKey('event_index')) {
      context.handle(
        _eventIndexMeta,
        eventIndex.isAcceptableOrUnknown(data['event_index']!, _eventIndexMeta),
      );
    } else if (isInserting) {
      context.missing(_eventIndexMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('player')) {
      context.handle(
        _playerMeta,
        player.isAcceptableOrUnknown(data['player']!, _playerMeta),
      );
    } else if (isInserting) {
      context.missing(_playerMeta);
    }
    if (data.containsKey('events_json')) {
      context.handle(
        _eventsJsonMeta,
        eventsJson.isAcceptableOrUnknown(data['events_json']!, _eventsJsonMeta),
      );
    } else if (isInserting) {
      context.missing(_eventsJsonMeta);
    }
    if (data.containsKey('is_crawford')) {
      context.handle(
        _isCrawfordMeta,
        isCrawford.isAcceptableOrUnknown(data['is_crawford']!, _isCrawfordMeta),
      );
    } else if (isInserting) {
      context.missing(_isCrawfordMeta);
    }
    if (data.containsKey('match_length')) {
      context.handle(
        _matchLengthMeta,
        matchLength.isAcceptableOrUnknown(
          data['match_length']!,
          _matchLengthMeta,
        ),
      );
    }
    if (data.containsKey('white_score')) {
      context.handle(
        _whiteScoreMeta,
        whiteScore.isAcceptableOrUnknown(data['white_score']!, _whiteScoreMeta),
      );
    }
    if (data.containsKey('black_score')) {
      context.handle(
        _blackScoreMeta,
        blackScore.isAcceptableOrUnknown(data['black_score']!, _blackScoreMeta),
      );
    }
    if (data.containsKey('crawford_played')) {
      context.handle(
        _crawfordPlayedMeta,
        crawfordPlayed.isAcceptableOrUnknown(
          data['crawford_played']!,
          _crawfordPlayedMeta,
        ),
      );
    }
    if (data.containsKey('cubeless')) {
      context.handle(
        _cubelessMeta,
        cubeless.isAcceptableOrUnknown(data['cubeless']!, _cubelessMeta),
      );
    }
    if (data.containsKey('assessment_json')) {
      context.handle(
        _assessmentJsonMeta,
        assessmentJson.isAcceptableOrUnknown(
          data['assessment_json']!,
          _assessmentJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_assessmentJsonMeta);
    }
    if (data.containsKey('themes_json')) {
      context.handle(
        _themesJsonMeta,
        themesJson.isAcceptableOrUnknown(data['themes_json']!, _themesJsonMeta),
      );
    } else if (isInserting) {
      context.missing(_themesJsonMeta);
    }
    if (data.containsKey('due_at')) {
      context.handle(
        _dueAtMeta,
        dueAt.isAcceptableOrUnknown(data['due_at']!, _dueAtMeta),
      );
    } else if (isInserting) {
      context.missing(_dueAtMeta);
    }
    if (data.containsKey('interval_days')) {
      context.handle(
        _intervalDaysMeta,
        intervalDays.isAcceptableOrUnknown(
          data['interval_days']!,
          _intervalDaysMeta,
        ),
      );
    }
    if (data.containsKey('success_streak')) {
      context.handle(
        _successStreakMeta,
        successStreak.isAcceptableOrUnknown(
          data['success_streak']!,
          _successStreakMeta,
        ),
      );
    }
    if (data.containsKey('last_attempt_at')) {
      context.handle(
        _lastAttemptAtMeta,
        lastAttemptAt.isAcceptableOrUnknown(
          data['last_attempt_at']!,
          _lastAttemptAtMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {gameId, eventIndex},
  ];
  @override
  PracticePositionRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PracticePositionRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      gameId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}game_id'],
      )!,
      eventIndex: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}event_index'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      player: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}player'],
      )!,
      eventsJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}events_json'],
      )!,
      isCrawford: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_crawford'],
      )!,
      matchLength: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}match_length'],
      ),
      whiteScore: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}white_score'],
      ),
      blackScore: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}black_score'],
      ),
      crawfordPlayed: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}crawford_played'],
      ),
      cubeless: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}cubeless'],
      ),
      assessmentJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}assessment_json'],
      )!,
      themesJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}themes_json'],
      )!,
      dueAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}due_at'],
      )!,
      intervalDays: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}interval_days'],
      )!,
      successStreak: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}success_streak'],
      )!,
      lastAttemptAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_attempt_at'],
      ),
    );
  }

  @override
  $PracticePositionsTable createAlias(String alias) {
    return $PracticePositionsTable(attachedDatabase, alias);
  }
}

class PracticePositionRow extends DataClass
    implements Insertable<PracticePositionRow> {
  final int id;
  final int gameId;
  final int eventIndex;
  final DateTime createdAt;
  final String player;
  final String eventsJson;
  final bool isCrawford;
  final int? matchLength;
  final int? whiteScore;
  final int? blackScore;
  final bool? crawfordPlayed;
  final bool? cubeless;
  final String assessmentJson;
  final String themesJson;
  final DateTime dueAt;
  final int intervalDays;
  final int successStreak;
  final DateTime? lastAttemptAt;
  const PracticePositionRow({
    required this.id,
    required this.gameId,
    required this.eventIndex,
    required this.createdAt,
    required this.player,
    required this.eventsJson,
    required this.isCrawford,
    this.matchLength,
    this.whiteScore,
    this.blackScore,
    this.crawfordPlayed,
    this.cubeless,
    required this.assessmentJson,
    required this.themesJson,
    required this.dueAt,
    required this.intervalDays,
    required this.successStreak,
    this.lastAttemptAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['game_id'] = Variable<int>(gameId);
    map['event_index'] = Variable<int>(eventIndex);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['player'] = Variable<String>(player);
    map['events_json'] = Variable<String>(eventsJson);
    map['is_crawford'] = Variable<bool>(isCrawford);
    if (!nullToAbsent || matchLength != null) {
      map['match_length'] = Variable<int>(matchLength);
    }
    if (!nullToAbsent || whiteScore != null) {
      map['white_score'] = Variable<int>(whiteScore);
    }
    if (!nullToAbsent || blackScore != null) {
      map['black_score'] = Variable<int>(blackScore);
    }
    if (!nullToAbsent || crawfordPlayed != null) {
      map['crawford_played'] = Variable<bool>(crawfordPlayed);
    }
    if (!nullToAbsent || cubeless != null) {
      map['cubeless'] = Variable<bool>(cubeless);
    }
    map['assessment_json'] = Variable<String>(assessmentJson);
    map['themes_json'] = Variable<String>(themesJson);
    map['due_at'] = Variable<DateTime>(dueAt);
    map['interval_days'] = Variable<int>(intervalDays);
    map['success_streak'] = Variable<int>(successStreak);
    if (!nullToAbsent || lastAttemptAt != null) {
      map['last_attempt_at'] = Variable<DateTime>(lastAttemptAt);
    }
    return map;
  }

  PracticePositionsCompanion toCompanion(bool nullToAbsent) {
    return PracticePositionsCompanion(
      id: Value(id),
      gameId: Value(gameId),
      eventIndex: Value(eventIndex),
      createdAt: Value(createdAt),
      player: Value(player),
      eventsJson: Value(eventsJson),
      isCrawford: Value(isCrawford),
      matchLength: matchLength == null && nullToAbsent
          ? const Value.absent()
          : Value(matchLength),
      whiteScore: whiteScore == null && nullToAbsent
          ? const Value.absent()
          : Value(whiteScore),
      blackScore: blackScore == null && nullToAbsent
          ? const Value.absent()
          : Value(blackScore),
      crawfordPlayed: crawfordPlayed == null && nullToAbsent
          ? const Value.absent()
          : Value(crawfordPlayed),
      cubeless: cubeless == null && nullToAbsent
          ? const Value.absent()
          : Value(cubeless),
      assessmentJson: Value(assessmentJson),
      themesJson: Value(themesJson),
      dueAt: Value(dueAt),
      intervalDays: Value(intervalDays),
      successStreak: Value(successStreak),
      lastAttemptAt: lastAttemptAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastAttemptAt),
    );
  }

  factory PracticePositionRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PracticePositionRow(
      id: serializer.fromJson<int>(json['id']),
      gameId: serializer.fromJson<int>(json['gameId']),
      eventIndex: serializer.fromJson<int>(json['eventIndex']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      player: serializer.fromJson<String>(json['player']),
      eventsJson: serializer.fromJson<String>(json['eventsJson']),
      isCrawford: serializer.fromJson<bool>(json['isCrawford']),
      matchLength: serializer.fromJson<int?>(json['matchLength']),
      whiteScore: serializer.fromJson<int?>(json['whiteScore']),
      blackScore: serializer.fromJson<int?>(json['blackScore']),
      crawfordPlayed: serializer.fromJson<bool?>(json['crawfordPlayed']),
      cubeless: serializer.fromJson<bool?>(json['cubeless']),
      assessmentJson: serializer.fromJson<String>(json['assessmentJson']),
      themesJson: serializer.fromJson<String>(json['themesJson']),
      dueAt: serializer.fromJson<DateTime>(json['dueAt']),
      intervalDays: serializer.fromJson<int>(json['intervalDays']),
      successStreak: serializer.fromJson<int>(json['successStreak']),
      lastAttemptAt: serializer.fromJson<DateTime?>(json['lastAttemptAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'gameId': serializer.toJson<int>(gameId),
      'eventIndex': serializer.toJson<int>(eventIndex),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'player': serializer.toJson<String>(player),
      'eventsJson': serializer.toJson<String>(eventsJson),
      'isCrawford': serializer.toJson<bool>(isCrawford),
      'matchLength': serializer.toJson<int?>(matchLength),
      'whiteScore': serializer.toJson<int?>(whiteScore),
      'blackScore': serializer.toJson<int?>(blackScore),
      'crawfordPlayed': serializer.toJson<bool?>(crawfordPlayed),
      'cubeless': serializer.toJson<bool?>(cubeless),
      'assessmentJson': serializer.toJson<String>(assessmentJson),
      'themesJson': serializer.toJson<String>(themesJson),
      'dueAt': serializer.toJson<DateTime>(dueAt),
      'intervalDays': serializer.toJson<int>(intervalDays),
      'successStreak': serializer.toJson<int>(successStreak),
      'lastAttemptAt': serializer.toJson<DateTime?>(lastAttemptAt),
    };
  }

  PracticePositionRow copyWith({
    int? id,
    int? gameId,
    int? eventIndex,
    DateTime? createdAt,
    String? player,
    String? eventsJson,
    bool? isCrawford,
    Value<int?> matchLength = const Value.absent(),
    Value<int?> whiteScore = const Value.absent(),
    Value<int?> blackScore = const Value.absent(),
    Value<bool?> crawfordPlayed = const Value.absent(),
    Value<bool?> cubeless = const Value.absent(),
    String? assessmentJson,
    String? themesJson,
    DateTime? dueAt,
    int? intervalDays,
    int? successStreak,
    Value<DateTime?> lastAttemptAt = const Value.absent(),
  }) => PracticePositionRow(
    id: id ?? this.id,
    gameId: gameId ?? this.gameId,
    eventIndex: eventIndex ?? this.eventIndex,
    createdAt: createdAt ?? this.createdAt,
    player: player ?? this.player,
    eventsJson: eventsJson ?? this.eventsJson,
    isCrawford: isCrawford ?? this.isCrawford,
    matchLength: matchLength.present ? matchLength.value : this.matchLength,
    whiteScore: whiteScore.present ? whiteScore.value : this.whiteScore,
    blackScore: blackScore.present ? blackScore.value : this.blackScore,
    crawfordPlayed: crawfordPlayed.present
        ? crawfordPlayed.value
        : this.crawfordPlayed,
    cubeless: cubeless.present ? cubeless.value : this.cubeless,
    assessmentJson: assessmentJson ?? this.assessmentJson,
    themesJson: themesJson ?? this.themesJson,
    dueAt: dueAt ?? this.dueAt,
    intervalDays: intervalDays ?? this.intervalDays,
    successStreak: successStreak ?? this.successStreak,
    lastAttemptAt: lastAttemptAt.present
        ? lastAttemptAt.value
        : this.lastAttemptAt,
  );
  PracticePositionRow copyWithCompanion(PracticePositionsCompanion data) {
    return PracticePositionRow(
      id: data.id.present ? data.id.value : this.id,
      gameId: data.gameId.present ? data.gameId.value : this.gameId,
      eventIndex: data.eventIndex.present
          ? data.eventIndex.value
          : this.eventIndex,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      player: data.player.present ? data.player.value : this.player,
      eventsJson: data.eventsJson.present
          ? data.eventsJson.value
          : this.eventsJson,
      isCrawford: data.isCrawford.present
          ? data.isCrawford.value
          : this.isCrawford,
      matchLength: data.matchLength.present
          ? data.matchLength.value
          : this.matchLength,
      whiteScore: data.whiteScore.present
          ? data.whiteScore.value
          : this.whiteScore,
      blackScore: data.blackScore.present
          ? data.blackScore.value
          : this.blackScore,
      crawfordPlayed: data.crawfordPlayed.present
          ? data.crawfordPlayed.value
          : this.crawfordPlayed,
      cubeless: data.cubeless.present ? data.cubeless.value : this.cubeless,
      assessmentJson: data.assessmentJson.present
          ? data.assessmentJson.value
          : this.assessmentJson,
      themesJson: data.themesJson.present
          ? data.themesJson.value
          : this.themesJson,
      dueAt: data.dueAt.present ? data.dueAt.value : this.dueAt,
      intervalDays: data.intervalDays.present
          ? data.intervalDays.value
          : this.intervalDays,
      successStreak: data.successStreak.present
          ? data.successStreak.value
          : this.successStreak,
      lastAttemptAt: data.lastAttemptAt.present
          ? data.lastAttemptAt.value
          : this.lastAttemptAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PracticePositionRow(')
          ..write('id: $id, ')
          ..write('gameId: $gameId, ')
          ..write('eventIndex: $eventIndex, ')
          ..write('createdAt: $createdAt, ')
          ..write('player: $player, ')
          ..write('eventsJson: $eventsJson, ')
          ..write('isCrawford: $isCrawford, ')
          ..write('matchLength: $matchLength, ')
          ..write('whiteScore: $whiteScore, ')
          ..write('blackScore: $blackScore, ')
          ..write('crawfordPlayed: $crawfordPlayed, ')
          ..write('cubeless: $cubeless, ')
          ..write('assessmentJson: $assessmentJson, ')
          ..write('themesJson: $themesJson, ')
          ..write('dueAt: $dueAt, ')
          ..write('intervalDays: $intervalDays, ')
          ..write('successStreak: $successStreak, ')
          ..write('lastAttemptAt: $lastAttemptAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    gameId,
    eventIndex,
    createdAt,
    player,
    eventsJson,
    isCrawford,
    matchLength,
    whiteScore,
    blackScore,
    crawfordPlayed,
    cubeless,
    assessmentJson,
    themesJson,
    dueAt,
    intervalDays,
    successStreak,
    lastAttemptAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PracticePositionRow &&
          other.id == this.id &&
          other.gameId == this.gameId &&
          other.eventIndex == this.eventIndex &&
          other.createdAt == this.createdAt &&
          other.player == this.player &&
          other.eventsJson == this.eventsJson &&
          other.isCrawford == this.isCrawford &&
          other.matchLength == this.matchLength &&
          other.whiteScore == this.whiteScore &&
          other.blackScore == this.blackScore &&
          other.crawfordPlayed == this.crawfordPlayed &&
          other.cubeless == this.cubeless &&
          other.assessmentJson == this.assessmentJson &&
          other.themesJson == this.themesJson &&
          other.dueAt == this.dueAt &&
          other.intervalDays == this.intervalDays &&
          other.successStreak == this.successStreak &&
          other.lastAttemptAt == this.lastAttemptAt);
}

class PracticePositionsCompanion extends UpdateCompanion<PracticePositionRow> {
  final Value<int> id;
  final Value<int> gameId;
  final Value<int> eventIndex;
  final Value<DateTime> createdAt;
  final Value<String> player;
  final Value<String> eventsJson;
  final Value<bool> isCrawford;
  final Value<int?> matchLength;
  final Value<int?> whiteScore;
  final Value<int?> blackScore;
  final Value<bool?> crawfordPlayed;
  final Value<bool?> cubeless;
  final Value<String> assessmentJson;
  final Value<String> themesJson;
  final Value<DateTime> dueAt;
  final Value<int> intervalDays;
  final Value<int> successStreak;
  final Value<DateTime?> lastAttemptAt;
  const PracticePositionsCompanion({
    this.id = const Value.absent(),
    this.gameId = const Value.absent(),
    this.eventIndex = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.player = const Value.absent(),
    this.eventsJson = const Value.absent(),
    this.isCrawford = const Value.absent(),
    this.matchLength = const Value.absent(),
    this.whiteScore = const Value.absent(),
    this.blackScore = const Value.absent(),
    this.crawfordPlayed = const Value.absent(),
    this.cubeless = const Value.absent(),
    this.assessmentJson = const Value.absent(),
    this.themesJson = const Value.absent(),
    this.dueAt = const Value.absent(),
    this.intervalDays = const Value.absent(),
    this.successStreak = const Value.absent(),
    this.lastAttemptAt = const Value.absent(),
  });
  PracticePositionsCompanion.insert({
    this.id = const Value.absent(),
    required int gameId,
    required int eventIndex,
    required DateTime createdAt,
    required String player,
    required String eventsJson,
    required bool isCrawford,
    this.matchLength = const Value.absent(),
    this.whiteScore = const Value.absent(),
    this.blackScore = const Value.absent(),
    this.crawfordPlayed = const Value.absent(),
    this.cubeless = const Value.absent(),
    required String assessmentJson,
    required String themesJson,
    required DateTime dueAt,
    this.intervalDays = const Value.absent(),
    this.successStreak = const Value.absent(),
    this.lastAttemptAt = const Value.absent(),
  }) : gameId = Value(gameId),
       eventIndex = Value(eventIndex),
       createdAt = Value(createdAt),
       player = Value(player),
       eventsJson = Value(eventsJson),
       isCrawford = Value(isCrawford),
       assessmentJson = Value(assessmentJson),
       themesJson = Value(themesJson),
       dueAt = Value(dueAt);
  static Insertable<PracticePositionRow> custom({
    Expression<int>? id,
    Expression<int>? gameId,
    Expression<int>? eventIndex,
    Expression<DateTime>? createdAt,
    Expression<String>? player,
    Expression<String>? eventsJson,
    Expression<bool>? isCrawford,
    Expression<int>? matchLength,
    Expression<int>? whiteScore,
    Expression<int>? blackScore,
    Expression<bool>? crawfordPlayed,
    Expression<bool>? cubeless,
    Expression<String>? assessmentJson,
    Expression<String>? themesJson,
    Expression<DateTime>? dueAt,
    Expression<int>? intervalDays,
    Expression<int>? successStreak,
    Expression<DateTime>? lastAttemptAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (gameId != null) 'game_id': gameId,
      if (eventIndex != null) 'event_index': eventIndex,
      if (createdAt != null) 'created_at': createdAt,
      if (player != null) 'player': player,
      if (eventsJson != null) 'events_json': eventsJson,
      if (isCrawford != null) 'is_crawford': isCrawford,
      if (matchLength != null) 'match_length': matchLength,
      if (whiteScore != null) 'white_score': whiteScore,
      if (blackScore != null) 'black_score': blackScore,
      if (crawfordPlayed != null) 'crawford_played': crawfordPlayed,
      if (cubeless != null) 'cubeless': cubeless,
      if (assessmentJson != null) 'assessment_json': assessmentJson,
      if (themesJson != null) 'themes_json': themesJson,
      if (dueAt != null) 'due_at': dueAt,
      if (intervalDays != null) 'interval_days': intervalDays,
      if (successStreak != null) 'success_streak': successStreak,
      if (lastAttemptAt != null) 'last_attempt_at': lastAttemptAt,
    });
  }

  PracticePositionsCompanion copyWith({
    Value<int>? id,
    Value<int>? gameId,
    Value<int>? eventIndex,
    Value<DateTime>? createdAt,
    Value<String>? player,
    Value<String>? eventsJson,
    Value<bool>? isCrawford,
    Value<int?>? matchLength,
    Value<int?>? whiteScore,
    Value<int?>? blackScore,
    Value<bool?>? crawfordPlayed,
    Value<bool?>? cubeless,
    Value<String>? assessmentJson,
    Value<String>? themesJson,
    Value<DateTime>? dueAt,
    Value<int>? intervalDays,
    Value<int>? successStreak,
    Value<DateTime?>? lastAttemptAt,
  }) {
    return PracticePositionsCompanion(
      id: id ?? this.id,
      gameId: gameId ?? this.gameId,
      eventIndex: eventIndex ?? this.eventIndex,
      createdAt: createdAt ?? this.createdAt,
      player: player ?? this.player,
      eventsJson: eventsJson ?? this.eventsJson,
      isCrawford: isCrawford ?? this.isCrawford,
      matchLength: matchLength ?? this.matchLength,
      whiteScore: whiteScore ?? this.whiteScore,
      blackScore: blackScore ?? this.blackScore,
      crawfordPlayed: crawfordPlayed ?? this.crawfordPlayed,
      cubeless: cubeless ?? this.cubeless,
      assessmentJson: assessmentJson ?? this.assessmentJson,
      themesJson: themesJson ?? this.themesJson,
      dueAt: dueAt ?? this.dueAt,
      intervalDays: intervalDays ?? this.intervalDays,
      successStreak: successStreak ?? this.successStreak,
      lastAttemptAt: lastAttemptAt ?? this.lastAttemptAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (gameId.present) {
      map['game_id'] = Variable<int>(gameId.value);
    }
    if (eventIndex.present) {
      map['event_index'] = Variable<int>(eventIndex.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (player.present) {
      map['player'] = Variable<String>(player.value);
    }
    if (eventsJson.present) {
      map['events_json'] = Variable<String>(eventsJson.value);
    }
    if (isCrawford.present) {
      map['is_crawford'] = Variable<bool>(isCrawford.value);
    }
    if (matchLength.present) {
      map['match_length'] = Variable<int>(matchLength.value);
    }
    if (whiteScore.present) {
      map['white_score'] = Variable<int>(whiteScore.value);
    }
    if (blackScore.present) {
      map['black_score'] = Variable<int>(blackScore.value);
    }
    if (crawfordPlayed.present) {
      map['crawford_played'] = Variable<bool>(crawfordPlayed.value);
    }
    if (cubeless.present) {
      map['cubeless'] = Variable<bool>(cubeless.value);
    }
    if (assessmentJson.present) {
      map['assessment_json'] = Variable<String>(assessmentJson.value);
    }
    if (themesJson.present) {
      map['themes_json'] = Variable<String>(themesJson.value);
    }
    if (dueAt.present) {
      map['due_at'] = Variable<DateTime>(dueAt.value);
    }
    if (intervalDays.present) {
      map['interval_days'] = Variable<int>(intervalDays.value);
    }
    if (successStreak.present) {
      map['success_streak'] = Variable<int>(successStreak.value);
    }
    if (lastAttemptAt.present) {
      map['last_attempt_at'] = Variable<DateTime>(lastAttemptAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PracticePositionsCompanion(')
          ..write('id: $id, ')
          ..write('gameId: $gameId, ')
          ..write('eventIndex: $eventIndex, ')
          ..write('createdAt: $createdAt, ')
          ..write('player: $player, ')
          ..write('eventsJson: $eventsJson, ')
          ..write('isCrawford: $isCrawford, ')
          ..write('matchLength: $matchLength, ')
          ..write('whiteScore: $whiteScore, ')
          ..write('blackScore: $blackScore, ')
          ..write('crawfordPlayed: $crawfordPlayed, ')
          ..write('cubeless: $cubeless, ')
          ..write('assessmentJson: $assessmentJson, ')
          ..write('themesJson: $themesJson, ')
          ..write('dueAt: $dueAt, ')
          ..write('intervalDays: $intervalDays, ')
          ..write('successStreak: $successStreak, ')
          ..write('lastAttemptAt: $lastAttemptAt')
          ..write(')'))
        .toString();
  }
}

class $PracticeAttemptsTable extends PracticeAttempts
    with TableInfo<$PracticeAttemptsTable, PracticeAttemptRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PracticeAttemptsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _positionIdMeta = const VerificationMeta(
    'positionId',
  );
  @override
  late final GeneratedColumn<int> positionId = GeneratedColumn<int>(
    'position_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints:
        'NOT NULL REFERENCES practice_positions (id) ON DELETE CASCADE',
  );
  static const VerificationMeta _attemptedAtMeta = const VerificationMeta(
    'attemptedAt',
  );
  @override
  late final GeneratedColumn<DateTime> attemptedAt = GeneratedColumn<DateTime>(
    'attempted_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _assessmentJsonMeta = const VerificationMeta(
    'assessmentJson',
  );
  @override
  late final GeneratedColumn<String> assessmentJson = GeneratedColumn<String>(
    'assessment_json',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _passedMeta = const VerificationMeta('passed');
  @override
  late final GeneratedColumn<bool> passed = GeneratedColumn<bool>(
    'passed',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("passed" IN (0, 1))',
    ),
  );
  static const VerificationMeta _revealedMeta = const VerificationMeta(
    'revealed',
  );
  @override
  late final GeneratedColumn<bool> revealed = GeneratedColumn<bool>(
    'revealed',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("revealed" IN (0, 1))',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    positionId,
    attemptedAt,
    assessmentJson,
    passed,
    revealed,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'practice_attempts';
  @override
  VerificationContext validateIntegrity(
    Insertable<PracticeAttemptRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('position_id')) {
      context.handle(
        _positionIdMeta,
        positionId.isAcceptableOrUnknown(data['position_id']!, _positionIdMeta),
      );
    } else if (isInserting) {
      context.missing(_positionIdMeta);
    }
    if (data.containsKey('attempted_at')) {
      context.handle(
        _attemptedAtMeta,
        attemptedAt.isAcceptableOrUnknown(
          data['attempted_at']!,
          _attemptedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_attemptedAtMeta);
    }
    if (data.containsKey('assessment_json')) {
      context.handle(
        _assessmentJsonMeta,
        assessmentJson.isAcceptableOrUnknown(
          data['assessment_json']!,
          _assessmentJsonMeta,
        ),
      );
    }
    if (data.containsKey('passed')) {
      context.handle(
        _passedMeta,
        passed.isAcceptableOrUnknown(data['passed']!, _passedMeta),
      );
    } else if (isInserting) {
      context.missing(_passedMeta);
    }
    if (data.containsKey('revealed')) {
      context.handle(
        _revealedMeta,
        revealed.isAcceptableOrUnknown(data['revealed']!, _revealedMeta),
      );
    } else if (isInserting) {
      context.missing(_revealedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PracticeAttemptRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PracticeAttemptRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      positionId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}position_id'],
      )!,
      attemptedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}attempted_at'],
      )!,
      assessmentJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}assessment_json'],
      ),
      passed: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}passed'],
      )!,
      revealed: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}revealed'],
      )!,
    );
  }

  @override
  $PracticeAttemptsTable createAlias(String alias) {
    return $PracticeAttemptsTable(attachedDatabase, alias);
  }
}

class PracticeAttemptRow extends DataClass
    implements Insertable<PracticeAttemptRow> {
  final int id;
  final int positionId;
  final DateTime attemptedAt;
  final String? assessmentJson;
  final bool passed;
  final bool revealed;
  const PracticeAttemptRow({
    required this.id,
    required this.positionId,
    required this.attemptedAt,
    this.assessmentJson,
    required this.passed,
    required this.revealed,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['position_id'] = Variable<int>(positionId);
    map['attempted_at'] = Variable<DateTime>(attemptedAt);
    if (!nullToAbsent || assessmentJson != null) {
      map['assessment_json'] = Variable<String>(assessmentJson);
    }
    map['passed'] = Variable<bool>(passed);
    map['revealed'] = Variable<bool>(revealed);
    return map;
  }

  PracticeAttemptsCompanion toCompanion(bool nullToAbsent) {
    return PracticeAttemptsCompanion(
      id: Value(id),
      positionId: Value(positionId),
      attemptedAt: Value(attemptedAt),
      assessmentJson: assessmentJson == null && nullToAbsent
          ? const Value.absent()
          : Value(assessmentJson),
      passed: Value(passed),
      revealed: Value(revealed),
    );
  }

  factory PracticeAttemptRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PracticeAttemptRow(
      id: serializer.fromJson<int>(json['id']),
      positionId: serializer.fromJson<int>(json['positionId']),
      attemptedAt: serializer.fromJson<DateTime>(json['attemptedAt']),
      assessmentJson: serializer.fromJson<String?>(json['assessmentJson']),
      passed: serializer.fromJson<bool>(json['passed']),
      revealed: serializer.fromJson<bool>(json['revealed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'positionId': serializer.toJson<int>(positionId),
      'attemptedAt': serializer.toJson<DateTime>(attemptedAt),
      'assessmentJson': serializer.toJson<String?>(assessmentJson),
      'passed': serializer.toJson<bool>(passed),
      'revealed': serializer.toJson<bool>(revealed),
    };
  }

  PracticeAttemptRow copyWith({
    int? id,
    int? positionId,
    DateTime? attemptedAt,
    Value<String?> assessmentJson = const Value.absent(),
    bool? passed,
    bool? revealed,
  }) => PracticeAttemptRow(
    id: id ?? this.id,
    positionId: positionId ?? this.positionId,
    attemptedAt: attemptedAt ?? this.attemptedAt,
    assessmentJson: assessmentJson.present
        ? assessmentJson.value
        : this.assessmentJson,
    passed: passed ?? this.passed,
    revealed: revealed ?? this.revealed,
  );
  PracticeAttemptRow copyWithCompanion(PracticeAttemptsCompanion data) {
    return PracticeAttemptRow(
      id: data.id.present ? data.id.value : this.id,
      positionId: data.positionId.present
          ? data.positionId.value
          : this.positionId,
      attemptedAt: data.attemptedAt.present
          ? data.attemptedAt.value
          : this.attemptedAt,
      assessmentJson: data.assessmentJson.present
          ? data.assessmentJson.value
          : this.assessmentJson,
      passed: data.passed.present ? data.passed.value : this.passed,
      revealed: data.revealed.present ? data.revealed.value : this.revealed,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PracticeAttemptRow(')
          ..write('id: $id, ')
          ..write('positionId: $positionId, ')
          ..write('attemptedAt: $attemptedAt, ')
          ..write('assessmentJson: $assessmentJson, ')
          ..write('passed: $passed, ')
          ..write('revealed: $revealed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    positionId,
    attemptedAt,
    assessmentJson,
    passed,
    revealed,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PracticeAttemptRow &&
          other.id == this.id &&
          other.positionId == this.positionId &&
          other.attemptedAt == this.attemptedAt &&
          other.assessmentJson == this.assessmentJson &&
          other.passed == this.passed &&
          other.revealed == this.revealed);
}

class PracticeAttemptsCompanion extends UpdateCompanion<PracticeAttemptRow> {
  final Value<int> id;
  final Value<int> positionId;
  final Value<DateTime> attemptedAt;
  final Value<String?> assessmentJson;
  final Value<bool> passed;
  final Value<bool> revealed;
  const PracticeAttemptsCompanion({
    this.id = const Value.absent(),
    this.positionId = const Value.absent(),
    this.attemptedAt = const Value.absent(),
    this.assessmentJson = const Value.absent(),
    this.passed = const Value.absent(),
    this.revealed = const Value.absent(),
  });
  PracticeAttemptsCompanion.insert({
    this.id = const Value.absent(),
    required int positionId,
    required DateTime attemptedAt,
    this.assessmentJson = const Value.absent(),
    required bool passed,
    required bool revealed,
  }) : positionId = Value(positionId),
       attemptedAt = Value(attemptedAt),
       passed = Value(passed),
       revealed = Value(revealed);
  static Insertable<PracticeAttemptRow> custom({
    Expression<int>? id,
    Expression<int>? positionId,
    Expression<DateTime>? attemptedAt,
    Expression<String>? assessmentJson,
    Expression<bool>? passed,
    Expression<bool>? revealed,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (positionId != null) 'position_id': positionId,
      if (attemptedAt != null) 'attempted_at': attemptedAt,
      if (assessmentJson != null) 'assessment_json': assessmentJson,
      if (passed != null) 'passed': passed,
      if (revealed != null) 'revealed': revealed,
    });
  }

  PracticeAttemptsCompanion copyWith({
    Value<int>? id,
    Value<int>? positionId,
    Value<DateTime>? attemptedAt,
    Value<String?>? assessmentJson,
    Value<bool>? passed,
    Value<bool>? revealed,
  }) {
    return PracticeAttemptsCompanion(
      id: id ?? this.id,
      positionId: positionId ?? this.positionId,
      attemptedAt: attemptedAt ?? this.attemptedAt,
      assessmentJson: assessmentJson ?? this.assessmentJson,
      passed: passed ?? this.passed,
      revealed: revealed ?? this.revealed,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (positionId.present) {
      map['position_id'] = Variable<int>(positionId.value);
    }
    if (attemptedAt.present) {
      map['attempted_at'] = Variable<DateTime>(attemptedAt.value);
    }
    if (assessmentJson.present) {
      map['assessment_json'] = Variable<String>(assessmentJson.value);
    }
    if (passed.present) {
      map['passed'] = Variable<bool>(passed.value);
    }
    if (revealed.present) {
      map['revealed'] = Variable<bool>(revealed.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PracticeAttemptsCompanion(')
          ..write('id: $id, ')
          ..write('positionId: $positionId, ')
          ..write('attemptedAt: $attemptedAt, ')
          ..write('assessmentJson: $assessmentJson, ')
          ..write('passed: $passed, ')
          ..write('revealed: $revealed')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $MatchesTable matches = $MatchesTable(this);
  late final $GamesTable games = $GamesTable(this);
  late final $SettingsTable settings = $SettingsTable(this);
  late final $OnlineSessionTable onlineSession = $OnlineSessionTable(this);
  late final $PracticePositionsTable practicePositions =
      $PracticePositionsTable(this);
  late final $PracticeAttemptsTable practiceAttempts = $PracticeAttemptsTable(
    this,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    matches,
    games,
    settings,
    onlineSession,
    practicePositions,
    practiceAttempts,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'matches',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('games', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'games',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('practice_positions', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'practice_positions',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('practice_attempts', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$MatchesTableCreateCompanionBuilder =
    MatchesCompanion Function({
      Value<int> id,
      required DateTime createdAt,
      required int matchLength,
      required String mode,
      required String whiteType,
      required String blackType,
      Value<bool?> cubeless,
      Value<int> whiteScore,
      Value<int> blackScore,
      Value<String?> winner,
      Value<bool> completed,
    });
typedef $$MatchesTableUpdateCompanionBuilder =
    MatchesCompanion Function({
      Value<int> id,
      Value<DateTime> createdAt,
      Value<int> matchLength,
      Value<String> mode,
      Value<String> whiteType,
      Value<String> blackType,
      Value<bool?> cubeless,
      Value<int> whiteScore,
      Value<int> blackScore,
      Value<String?> winner,
      Value<bool> completed,
    });

final class $$MatchesTableReferences
    extends BaseReferences<_$AppDatabase, $MatchesTable, MatchRow> {
  $$MatchesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$GamesTable, List<GameRow>> _gamesRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.games,
    aliasName: $_aliasNameGenerator(db.matches.id, db.games.matchId),
  );

  $$GamesTableProcessedTableManager get gamesRefs {
    final manager = $$GamesTableTableManager(
      $_db,
      $_db.games,
    ).filter((f) => f.matchId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_gamesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$MatchesTableFilterComposer
    extends Composer<_$AppDatabase, $MatchesTable> {
  $$MatchesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get matchLength => $composableBuilder(
    column: $table.matchLength,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get whiteType => $composableBuilder(
    column: $table.whiteType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get blackType => $composableBuilder(
    column: $table.blackType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get cubeless => $composableBuilder(
    column: $table.cubeless,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get whiteScore => $composableBuilder(
    column: $table.whiteScore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get blackScore => $composableBuilder(
    column: $table.blackScore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get winner => $composableBuilder(
    column: $table.winner,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get completed => $composableBuilder(
    column: $table.completed,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> gamesRefs(
    Expression<bool> Function($$GamesTableFilterComposer f) f,
  ) {
    final $$GamesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.games,
      getReferencedColumn: (t) => t.matchId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GamesTableFilterComposer(
            $db: $db,
            $table: $db.games,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MatchesTableOrderingComposer
    extends Composer<_$AppDatabase, $MatchesTable> {
  $$MatchesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get matchLength => $composableBuilder(
    column: $table.matchLength,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mode => $composableBuilder(
    column: $table.mode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get whiteType => $composableBuilder(
    column: $table.whiteType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get blackType => $composableBuilder(
    column: $table.blackType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get cubeless => $composableBuilder(
    column: $table.cubeless,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get whiteScore => $composableBuilder(
    column: $table.whiteScore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get blackScore => $composableBuilder(
    column: $table.blackScore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get winner => $composableBuilder(
    column: $table.winner,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get completed => $composableBuilder(
    column: $table.completed,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MatchesTableAnnotationComposer
    extends Composer<_$AppDatabase, $MatchesTable> {
  $$MatchesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<int> get matchLength => $composableBuilder(
    column: $table.matchLength,
    builder: (column) => column,
  );

  GeneratedColumn<String> get mode =>
      $composableBuilder(column: $table.mode, builder: (column) => column);

  GeneratedColumn<String> get whiteType =>
      $composableBuilder(column: $table.whiteType, builder: (column) => column);

  GeneratedColumn<String> get blackType =>
      $composableBuilder(column: $table.blackType, builder: (column) => column);

  GeneratedColumn<bool> get cubeless =>
      $composableBuilder(column: $table.cubeless, builder: (column) => column);

  GeneratedColumn<int> get whiteScore => $composableBuilder(
    column: $table.whiteScore,
    builder: (column) => column,
  );

  GeneratedColumn<int> get blackScore => $composableBuilder(
    column: $table.blackScore,
    builder: (column) => column,
  );

  GeneratedColumn<String> get winner =>
      $composableBuilder(column: $table.winner, builder: (column) => column);

  GeneratedColumn<bool> get completed =>
      $composableBuilder(column: $table.completed, builder: (column) => column);

  Expression<T> gamesRefs<T extends Object>(
    Expression<T> Function($$GamesTableAnnotationComposer a) f,
  ) {
    final $$GamesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.games,
      getReferencedColumn: (t) => t.matchId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GamesTableAnnotationComposer(
            $db: $db,
            $table: $db.games,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$MatchesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MatchesTable,
          MatchRow,
          $$MatchesTableFilterComposer,
          $$MatchesTableOrderingComposer,
          $$MatchesTableAnnotationComposer,
          $$MatchesTableCreateCompanionBuilder,
          $$MatchesTableUpdateCompanionBuilder,
          (MatchRow, $$MatchesTableReferences),
          MatchRow,
          PrefetchHooks Function({bool gamesRefs})
        > {
  $$MatchesTableTableManager(_$AppDatabase db, $MatchesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MatchesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MatchesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MatchesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> matchLength = const Value.absent(),
                Value<String> mode = const Value.absent(),
                Value<String> whiteType = const Value.absent(),
                Value<String> blackType = const Value.absent(),
                Value<bool?> cubeless = const Value.absent(),
                Value<int> whiteScore = const Value.absent(),
                Value<int> blackScore = const Value.absent(),
                Value<String?> winner = const Value.absent(),
                Value<bool> completed = const Value.absent(),
              }) => MatchesCompanion(
                id: id,
                createdAt: createdAt,
                matchLength: matchLength,
                mode: mode,
                whiteType: whiteType,
                blackType: blackType,
                cubeless: cubeless,
                whiteScore: whiteScore,
                blackScore: blackScore,
                winner: winner,
                completed: completed,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required DateTime createdAt,
                required int matchLength,
                required String mode,
                required String whiteType,
                required String blackType,
                Value<bool?> cubeless = const Value.absent(),
                Value<int> whiteScore = const Value.absent(),
                Value<int> blackScore = const Value.absent(),
                Value<String?> winner = const Value.absent(),
                Value<bool> completed = const Value.absent(),
              }) => MatchesCompanion.insert(
                id: id,
                createdAt: createdAt,
                matchLength: matchLength,
                mode: mode,
                whiteType: whiteType,
                blackType: blackType,
                cubeless: cubeless,
                whiteScore: whiteScore,
                blackScore: blackScore,
                winner: winner,
                completed: completed,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$MatchesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({gamesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (gamesRefs) db.games],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (gamesRefs)
                    await $_getPrefetchedData<MatchRow, $MatchesTable, GameRow>(
                      currentTable: table,
                      referencedTable: $$MatchesTableReferences._gamesRefsTable(
                        db,
                      ),
                      managerFromTypedResult: (p0) =>
                          $$MatchesTableReferences(db, table, p0).gamesRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.matchId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$MatchesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MatchesTable,
      MatchRow,
      $$MatchesTableFilterComposer,
      $$MatchesTableOrderingComposer,
      $$MatchesTableAnnotationComposer,
      $$MatchesTableCreateCompanionBuilder,
      $$MatchesTableUpdateCompanionBuilder,
      (MatchRow, $$MatchesTableReferences),
      MatchRow,
      PrefetchHooks Function({bool gamesRefs})
    >;
typedef $$GamesTableCreateCompanionBuilder =
    GamesCompanion Function({
      Value<int> id,
      required int matchId,
      required int gameNumber,
      required bool isCrawford,
      required String eventsJson,
      Value<String?> resultWinner,
      Value<int?> resultPoints,
      Value<String?> resultOutcome,
      Value<String?> analysisJson,
    });
typedef $$GamesTableUpdateCompanionBuilder =
    GamesCompanion Function({
      Value<int> id,
      Value<int> matchId,
      Value<int> gameNumber,
      Value<bool> isCrawford,
      Value<String> eventsJson,
      Value<String?> resultWinner,
      Value<int?> resultPoints,
      Value<String?> resultOutcome,
      Value<String?> analysisJson,
    });

final class $$GamesTableReferences
    extends BaseReferences<_$AppDatabase, $GamesTable, GameRow> {
  $$GamesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $MatchesTable _matchIdTable(_$AppDatabase db) => db.matches
      .createAlias($_aliasNameGenerator(db.games.matchId, db.matches.id));

  $$MatchesTableProcessedTableManager get matchId {
    final $_column = $_itemColumn<int>('match_id')!;

    final manager = $$MatchesTableTableManager(
      $_db,
      $_db.matches,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_matchIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$PracticePositionsTable, List<PracticePositionRow>>
  _practicePositionsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.practicePositions,
        aliasName: $_aliasNameGenerator(
          db.games.id,
          db.practicePositions.gameId,
        ),
      );

  $$PracticePositionsTableProcessedTableManager get practicePositionsRefs {
    final manager = $$PracticePositionsTableTableManager(
      $_db,
      $_db.practicePositions,
    ).filter((f) => f.gameId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _practicePositionsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$GamesTableFilterComposer extends Composer<_$AppDatabase, $GamesTable> {
  $$GamesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get gameNumber => $composableBuilder(
    column: $table.gameNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isCrawford => $composableBuilder(
    column: $table.isCrawford,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get eventsJson => $composableBuilder(
    column: $table.eventsJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get resultWinner => $composableBuilder(
    column: $table.resultWinner,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get resultPoints => $composableBuilder(
    column: $table.resultPoints,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get resultOutcome => $composableBuilder(
    column: $table.resultOutcome,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get analysisJson => $composableBuilder(
    column: $table.analysisJson,
    builder: (column) => ColumnFilters(column),
  );

  $$MatchesTableFilterComposer get matchId {
    final $$MatchesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.matchId,
      referencedTable: $db.matches,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MatchesTableFilterComposer(
            $db: $db,
            $table: $db.matches,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> practicePositionsRefs(
    Expression<bool> Function($$PracticePositionsTableFilterComposer f) f,
  ) {
    final $$PracticePositionsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.practicePositions,
      getReferencedColumn: (t) => t.gameId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PracticePositionsTableFilterComposer(
            $db: $db,
            $table: $db.practicePositions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$GamesTableOrderingComposer
    extends Composer<_$AppDatabase, $GamesTable> {
  $$GamesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get gameNumber => $composableBuilder(
    column: $table.gameNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isCrawford => $composableBuilder(
    column: $table.isCrawford,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get eventsJson => $composableBuilder(
    column: $table.eventsJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get resultWinner => $composableBuilder(
    column: $table.resultWinner,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get resultPoints => $composableBuilder(
    column: $table.resultPoints,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get resultOutcome => $composableBuilder(
    column: $table.resultOutcome,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get analysisJson => $composableBuilder(
    column: $table.analysisJson,
    builder: (column) => ColumnOrderings(column),
  );

  $$MatchesTableOrderingComposer get matchId {
    final $$MatchesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.matchId,
      referencedTable: $db.matches,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MatchesTableOrderingComposer(
            $db: $db,
            $table: $db.matches,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GamesTableAnnotationComposer
    extends Composer<_$AppDatabase, $GamesTable> {
  $$GamesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get gameNumber => $composableBuilder(
    column: $table.gameNumber,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isCrawford => $composableBuilder(
    column: $table.isCrawford,
    builder: (column) => column,
  );

  GeneratedColumn<String> get eventsJson => $composableBuilder(
    column: $table.eventsJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get resultWinner => $composableBuilder(
    column: $table.resultWinner,
    builder: (column) => column,
  );

  GeneratedColumn<int> get resultPoints => $composableBuilder(
    column: $table.resultPoints,
    builder: (column) => column,
  );

  GeneratedColumn<String> get resultOutcome => $composableBuilder(
    column: $table.resultOutcome,
    builder: (column) => column,
  );

  GeneratedColumn<String> get analysisJson => $composableBuilder(
    column: $table.analysisJson,
    builder: (column) => column,
  );

  $$MatchesTableAnnotationComposer get matchId {
    final $$MatchesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.matchId,
      referencedTable: $db.matches,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MatchesTableAnnotationComposer(
            $db: $db,
            $table: $db.matches,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> practicePositionsRefs<T extends Object>(
    Expression<T> Function($$PracticePositionsTableAnnotationComposer a) f,
  ) {
    final $$PracticePositionsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.practicePositions,
          getReferencedColumn: (t) => t.gameId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$PracticePositionsTableAnnotationComposer(
                $db: $db,
                $table: $db.practicePositions,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$GamesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GamesTable,
          GameRow,
          $$GamesTableFilterComposer,
          $$GamesTableOrderingComposer,
          $$GamesTableAnnotationComposer,
          $$GamesTableCreateCompanionBuilder,
          $$GamesTableUpdateCompanionBuilder,
          (GameRow, $$GamesTableReferences),
          GameRow,
          PrefetchHooks Function({bool matchId, bool practicePositionsRefs})
        > {
  $$GamesTableTableManager(_$AppDatabase db, $GamesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GamesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GamesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GamesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> matchId = const Value.absent(),
                Value<int> gameNumber = const Value.absent(),
                Value<bool> isCrawford = const Value.absent(),
                Value<String> eventsJson = const Value.absent(),
                Value<String?> resultWinner = const Value.absent(),
                Value<int?> resultPoints = const Value.absent(),
                Value<String?> resultOutcome = const Value.absent(),
                Value<String?> analysisJson = const Value.absent(),
              }) => GamesCompanion(
                id: id,
                matchId: matchId,
                gameNumber: gameNumber,
                isCrawford: isCrawford,
                eventsJson: eventsJson,
                resultWinner: resultWinner,
                resultPoints: resultPoints,
                resultOutcome: resultOutcome,
                analysisJson: analysisJson,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int matchId,
                required int gameNumber,
                required bool isCrawford,
                required String eventsJson,
                Value<String?> resultWinner = const Value.absent(),
                Value<int?> resultPoints = const Value.absent(),
                Value<String?> resultOutcome = const Value.absent(),
                Value<String?> analysisJson = const Value.absent(),
              }) => GamesCompanion.insert(
                id: id,
                matchId: matchId,
                gameNumber: gameNumber,
                isCrawford: isCrawford,
                eventsJson: eventsJson,
                resultWinner: resultWinner,
                resultPoints: resultPoints,
                resultOutcome: resultOutcome,
                analysisJson: analysisJson,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$GamesTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({matchId = false, practicePositionsRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (practicePositionsRefs) db.practicePositions,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (matchId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.matchId,
                                    referencedTable: $$GamesTableReferences
                                        ._matchIdTable(db),
                                    referencedColumn: $$GamesTableReferences
                                        ._matchIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (practicePositionsRefs)
                        await $_getPrefetchedData<
                          GameRow,
                          $GamesTable,
                          PracticePositionRow
                        >(
                          currentTable: table,
                          referencedTable: $$GamesTableReferences
                              ._practicePositionsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$GamesTableReferences(
                                db,
                                table,
                                p0,
                              ).practicePositionsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.gameId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$GamesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GamesTable,
      GameRow,
      $$GamesTableFilterComposer,
      $$GamesTableOrderingComposer,
      $$GamesTableAnnotationComposer,
      $$GamesTableCreateCompanionBuilder,
      $$GamesTableUpdateCompanionBuilder,
      (GameRow, $$GamesTableReferences),
      GameRow,
      PrefetchHooks Function({bool matchId, bool practicePositionsRefs})
    >;
typedef $$SettingsTableCreateCompanionBuilder =
    SettingsCompanion Function({
      Value<int> id,
      Value<String> themeMode,
      Value<String> animationSpeed,
      Value<int> defaultMatchLength,
      Value<String> defaultDifficulty,
      Value<String?> tutorOverride,
      Value<bool> showHighlights,
      Value<bool> enableDrag,
      Value<bool> enableCombinedTaps,
      Value<bool> showScoring,
      Value<bool> diceRollAnimation,
      Value<bool> showPassDevice,
      Value<bool> rotateBoardHotSeat,
      Value<bool> dragHintShown,
      Value<String> buddyPhrasing,
      Value<bool> buddyMicHint,
      Value<bool> tutorBestMoves,
      Value<bool> tutorExplanations,
      Value<bool> tutorCommentary,
      Value<bool> tutorCubeAdvice,
      Value<bool> tutorTryFirst,
      Value<bool> telemetryEnabled,
    });
typedef $$SettingsTableUpdateCompanionBuilder =
    SettingsCompanion Function({
      Value<int> id,
      Value<String> themeMode,
      Value<String> animationSpeed,
      Value<int> defaultMatchLength,
      Value<String> defaultDifficulty,
      Value<String?> tutorOverride,
      Value<bool> showHighlights,
      Value<bool> enableDrag,
      Value<bool> enableCombinedTaps,
      Value<bool> showScoring,
      Value<bool> diceRollAnimation,
      Value<bool> showPassDevice,
      Value<bool> rotateBoardHotSeat,
      Value<bool> dragHintShown,
      Value<String> buddyPhrasing,
      Value<bool> buddyMicHint,
      Value<bool> tutorBestMoves,
      Value<bool> tutorExplanations,
      Value<bool> tutorCommentary,
      Value<bool> tutorCubeAdvice,
      Value<bool> tutorTryFirst,
      Value<bool> telemetryEnabled,
    });

class $$SettingsTableFilterComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get themeMode => $composableBuilder(
    column: $table.themeMode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get animationSpeed => $composableBuilder(
    column: $table.animationSpeed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get defaultMatchLength => $composableBuilder(
    column: $table.defaultMatchLength,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get defaultDifficulty => $composableBuilder(
    column: $table.defaultDifficulty,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tutorOverride => $composableBuilder(
    column: $table.tutorOverride,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get showHighlights => $composableBuilder(
    column: $table.showHighlights,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get enableDrag => $composableBuilder(
    column: $table.enableDrag,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get enableCombinedTaps => $composableBuilder(
    column: $table.enableCombinedTaps,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get showScoring => $composableBuilder(
    column: $table.showScoring,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get diceRollAnimation => $composableBuilder(
    column: $table.diceRollAnimation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get showPassDevice => $composableBuilder(
    column: $table.showPassDevice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get rotateBoardHotSeat => $composableBuilder(
    column: $table.rotateBoardHotSeat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get dragHintShown => $composableBuilder(
    column: $table.dragHintShown,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get buddyPhrasing => $composableBuilder(
    column: $table.buddyPhrasing,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get buddyMicHint => $composableBuilder(
    column: $table.buddyMicHint,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get tutorBestMoves => $composableBuilder(
    column: $table.tutorBestMoves,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get tutorExplanations => $composableBuilder(
    column: $table.tutorExplanations,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get tutorCommentary => $composableBuilder(
    column: $table.tutorCommentary,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get tutorCubeAdvice => $composableBuilder(
    column: $table.tutorCubeAdvice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get tutorTryFirst => $composableBuilder(
    column: $table.tutorTryFirst,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get telemetryEnabled => $composableBuilder(
    column: $table.telemetryEnabled,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SettingsTableOrderingComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get themeMode => $composableBuilder(
    column: $table.themeMode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get animationSpeed => $composableBuilder(
    column: $table.animationSpeed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get defaultMatchLength => $composableBuilder(
    column: $table.defaultMatchLength,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get defaultDifficulty => $composableBuilder(
    column: $table.defaultDifficulty,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tutorOverride => $composableBuilder(
    column: $table.tutorOverride,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get showHighlights => $composableBuilder(
    column: $table.showHighlights,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get enableDrag => $composableBuilder(
    column: $table.enableDrag,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get enableCombinedTaps => $composableBuilder(
    column: $table.enableCombinedTaps,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get showScoring => $composableBuilder(
    column: $table.showScoring,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get diceRollAnimation => $composableBuilder(
    column: $table.diceRollAnimation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get showPassDevice => $composableBuilder(
    column: $table.showPassDevice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get rotateBoardHotSeat => $composableBuilder(
    column: $table.rotateBoardHotSeat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get dragHintShown => $composableBuilder(
    column: $table.dragHintShown,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get buddyPhrasing => $composableBuilder(
    column: $table.buddyPhrasing,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get buddyMicHint => $composableBuilder(
    column: $table.buddyMicHint,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get tutorBestMoves => $composableBuilder(
    column: $table.tutorBestMoves,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get tutorExplanations => $composableBuilder(
    column: $table.tutorExplanations,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get tutorCommentary => $composableBuilder(
    column: $table.tutorCommentary,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get tutorCubeAdvice => $composableBuilder(
    column: $table.tutorCubeAdvice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get tutorTryFirst => $composableBuilder(
    column: $table.tutorTryFirst,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get telemetryEnabled => $composableBuilder(
    column: $table.telemetryEnabled,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SettingsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get themeMode =>
      $composableBuilder(column: $table.themeMode, builder: (column) => column);

  GeneratedColumn<String> get animationSpeed => $composableBuilder(
    column: $table.animationSpeed,
    builder: (column) => column,
  );

  GeneratedColumn<int> get defaultMatchLength => $composableBuilder(
    column: $table.defaultMatchLength,
    builder: (column) => column,
  );

  GeneratedColumn<String> get defaultDifficulty => $composableBuilder(
    column: $table.defaultDifficulty,
    builder: (column) => column,
  );

  GeneratedColumn<String> get tutorOverride => $composableBuilder(
    column: $table.tutorOverride,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get showHighlights => $composableBuilder(
    column: $table.showHighlights,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get enableDrag => $composableBuilder(
    column: $table.enableDrag,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get enableCombinedTaps => $composableBuilder(
    column: $table.enableCombinedTaps,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get showScoring => $composableBuilder(
    column: $table.showScoring,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get diceRollAnimation => $composableBuilder(
    column: $table.diceRollAnimation,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get showPassDevice => $composableBuilder(
    column: $table.showPassDevice,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get rotateBoardHotSeat => $composableBuilder(
    column: $table.rotateBoardHotSeat,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get dragHintShown => $composableBuilder(
    column: $table.dragHintShown,
    builder: (column) => column,
  );

  GeneratedColumn<String> get buddyPhrasing => $composableBuilder(
    column: $table.buddyPhrasing,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get buddyMicHint => $composableBuilder(
    column: $table.buddyMicHint,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get tutorBestMoves => $composableBuilder(
    column: $table.tutorBestMoves,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get tutorExplanations => $composableBuilder(
    column: $table.tutorExplanations,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get tutorCommentary => $composableBuilder(
    column: $table.tutorCommentary,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get tutorCubeAdvice => $composableBuilder(
    column: $table.tutorCubeAdvice,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get tutorTryFirst => $composableBuilder(
    column: $table.tutorTryFirst,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get telemetryEnabled => $composableBuilder(
    column: $table.telemetryEnabled,
    builder: (column) => column,
  );
}

class $$SettingsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SettingsTable,
          SettingsRow,
          $$SettingsTableFilterComposer,
          $$SettingsTableOrderingComposer,
          $$SettingsTableAnnotationComposer,
          $$SettingsTableCreateCompanionBuilder,
          $$SettingsTableUpdateCompanionBuilder,
          (
            SettingsRow,
            BaseReferences<_$AppDatabase, $SettingsTable, SettingsRow>,
          ),
          SettingsRow,
          PrefetchHooks Function()
        > {
  $$SettingsTableTableManager(_$AppDatabase db, $SettingsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SettingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SettingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SettingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> themeMode = const Value.absent(),
                Value<String> animationSpeed = const Value.absent(),
                Value<int> defaultMatchLength = const Value.absent(),
                Value<String> defaultDifficulty = const Value.absent(),
                Value<String?> tutorOverride = const Value.absent(),
                Value<bool> showHighlights = const Value.absent(),
                Value<bool> enableDrag = const Value.absent(),
                Value<bool> enableCombinedTaps = const Value.absent(),
                Value<bool> showScoring = const Value.absent(),
                Value<bool> diceRollAnimation = const Value.absent(),
                Value<bool> showPassDevice = const Value.absent(),
                Value<bool> rotateBoardHotSeat = const Value.absent(),
                Value<bool> dragHintShown = const Value.absent(),
                Value<String> buddyPhrasing = const Value.absent(),
                Value<bool> buddyMicHint = const Value.absent(),
                Value<bool> tutorBestMoves = const Value.absent(),
                Value<bool> tutorExplanations = const Value.absent(),
                Value<bool> tutorCommentary = const Value.absent(),
                Value<bool> tutorCubeAdvice = const Value.absent(),
                Value<bool> tutorTryFirst = const Value.absent(),
                Value<bool> telemetryEnabled = const Value.absent(),
              }) => SettingsCompanion(
                id: id,
                themeMode: themeMode,
                animationSpeed: animationSpeed,
                defaultMatchLength: defaultMatchLength,
                defaultDifficulty: defaultDifficulty,
                tutorOverride: tutorOverride,
                showHighlights: showHighlights,
                enableDrag: enableDrag,
                enableCombinedTaps: enableCombinedTaps,
                showScoring: showScoring,
                diceRollAnimation: diceRollAnimation,
                showPassDevice: showPassDevice,
                rotateBoardHotSeat: rotateBoardHotSeat,
                dragHintShown: dragHintShown,
                buddyPhrasing: buddyPhrasing,
                buddyMicHint: buddyMicHint,
                tutorBestMoves: tutorBestMoves,
                tutorExplanations: tutorExplanations,
                tutorCommentary: tutorCommentary,
                tutorCubeAdvice: tutorCubeAdvice,
                tutorTryFirst: tutorTryFirst,
                telemetryEnabled: telemetryEnabled,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> themeMode = const Value.absent(),
                Value<String> animationSpeed = const Value.absent(),
                Value<int> defaultMatchLength = const Value.absent(),
                Value<String> defaultDifficulty = const Value.absent(),
                Value<String?> tutorOverride = const Value.absent(),
                Value<bool> showHighlights = const Value.absent(),
                Value<bool> enableDrag = const Value.absent(),
                Value<bool> enableCombinedTaps = const Value.absent(),
                Value<bool> showScoring = const Value.absent(),
                Value<bool> diceRollAnimation = const Value.absent(),
                Value<bool> showPassDevice = const Value.absent(),
                Value<bool> rotateBoardHotSeat = const Value.absent(),
                Value<bool> dragHintShown = const Value.absent(),
                Value<String> buddyPhrasing = const Value.absent(),
                Value<bool> buddyMicHint = const Value.absent(),
                Value<bool> tutorBestMoves = const Value.absent(),
                Value<bool> tutorExplanations = const Value.absent(),
                Value<bool> tutorCommentary = const Value.absent(),
                Value<bool> tutorCubeAdvice = const Value.absent(),
                Value<bool> tutorTryFirst = const Value.absent(),
                Value<bool> telemetryEnabled = const Value.absent(),
              }) => SettingsCompanion.insert(
                id: id,
                themeMode: themeMode,
                animationSpeed: animationSpeed,
                defaultMatchLength: defaultMatchLength,
                defaultDifficulty: defaultDifficulty,
                tutorOverride: tutorOverride,
                showHighlights: showHighlights,
                enableDrag: enableDrag,
                enableCombinedTaps: enableCombinedTaps,
                showScoring: showScoring,
                diceRollAnimation: diceRollAnimation,
                showPassDevice: showPassDevice,
                rotateBoardHotSeat: rotateBoardHotSeat,
                dragHintShown: dragHintShown,
                buddyPhrasing: buddyPhrasing,
                buddyMicHint: buddyMicHint,
                tutorBestMoves: tutorBestMoves,
                tutorExplanations: tutorExplanations,
                tutorCommentary: tutorCommentary,
                tutorCubeAdvice: tutorCubeAdvice,
                tutorTryFirst: tutorTryFirst,
                telemetryEnabled: telemetryEnabled,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SettingsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SettingsTable,
      SettingsRow,
      $$SettingsTableFilterComposer,
      $$SettingsTableOrderingComposer,
      $$SettingsTableAnnotationComposer,
      $$SettingsTableCreateCompanionBuilder,
      $$SettingsTableUpdateCompanionBuilder,
      (SettingsRow, BaseReferences<_$AppDatabase, $SettingsTable, SettingsRow>),
      SettingsRow,
      PrefetchHooks Function()
    >;
typedef $$OnlineSessionTableCreateCompanionBuilder =
    OnlineSessionCompanion Function({
      Value<int> id,
      Value<String?> uid,
      Value<String?> refreshToken,
      Value<String?> matchCode,
    });
typedef $$OnlineSessionTableUpdateCompanionBuilder =
    OnlineSessionCompanion Function({
      Value<int> id,
      Value<String?> uid,
      Value<String?> refreshToken,
      Value<String?> matchCode,
    });

class $$OnlineSessionTableFilterComposer
    extends Composer<_$AppDatabase, $OnlineSessionTable> {
  $$OnlineSessionTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get uid => $composableBuilder(
    column: $table.uid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get refreshToken => $composableBuilder(
    column: $table.refreshToken,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get matchCode => $composableBuilder(
    column: $table.matchCode,
    builder: (column) => ColumnFilters(column),
  );
}

class $$OnlineSessionTableOrderingComposer
    extends Composer<_$AppDatabase, $OnlineSessionTable> {
  $$OnlineSessionTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get uid => $composableBuilder(
    column: $table.uid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get refreshToken => $composableBuilder(
    column: $table.refreshToken,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get matchCode => $composableBuilder(
    column: $table.matchCode,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$OnlineSessionTableAnnotationComposer
    extends Composer<_$AppDatabase, $OnlineSessionTable> {
  $$OnlineSessionTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get uid =>
      $composableBuilder(column: $table.uid, builder: (column) => column);

  GeneratedColumn<String> get refreshToken => $composableBuilder(
    column: $table.refreshToken,
    builder: (column) => column,
  );

  GeneratedColumn<String> get matchCode =>
      $composableBuilder(column: $table.matchCode, builder: (column) => column);
}

class $$OnlineSessionTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $OnlineSessionTable,
          OnlineSessionRow,
          $$OnlineSessionTableFilterComposer,
          $$OnlineSessionTableOrderingComposer,
          $$OnlineSessionTableAnnotationComposer,
          $$OnlineSessionTableCreateCompanionBuilder,
          $$OnlineSessionTableUpdateCompanionBuilder,
          (
            OnlineSessionRow,
            BaseReferences<
              _$AppDatabase,
              $OnlineSessionTable,
              OnlineSessionRow
            >,
          ),
          OnlineSessionRow,
          PrefetchHooks Function()
        > {
  $$OnlineSessionTableTableManager(_$AppDatabase db, $OnlineSessionTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OnlineSessionTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OnlineSessionTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OnlineSessionTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> uid = const Value.absent(),
                Value<String?> refreshToken = const Value.absent(),
                Value<String?> matchCode = const Value.absent(),
              }) => OnlineSessionCompanion(
                id: id,
                uid: uid,
                refreshToken: refreshToken,
                matchCode: matchCode,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> uid = const Value.absent(),
                Value<String?> refreshToken = const Value.absent(),
                Value<String?> matchCode = const Value.absent(),
              }) => OnlineSessionCompanion.insert(
                id: id,
                uid: uid,
                refreshToken: refreshToken,
                matchCode: matchCode,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$OnlineSessionTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $OnlineSessionTable,
      OnlineSessionRow,
      $$OnlineSessionTableFilterComposer,
      $$OnlineSessionTableOrderingComposer,
      $$OnlineSessionTableAnnotationComposer,
      $$OnlineSessionTableCreateCompanionBuilder,
      $$OnlineSessionTableUpdateCompanionBuilder,
      (
        OnlineSessionRow,
        BaseReferences<_$AppDatabase, $OnlineSessionTable, OnlineSessionRow>,
      ),
      OnlineSessionRow,
      PrefetchHooks Function()
    >;
typedef $$PracticePositionsTableCreateCompanionBuilder =
    PracticePositionsCompanion Function({
      Value<int> id,
      required int gameId,
      required int eventIndex,
      required DateTime createdAt,
      required String player,
      required String eventsJson,
      required bool isCrawford,
      Value<int?> matchLength,
      Value<int?> whiteScore,
      Value<int?> blackScore,
      Value<bool?> crawfordPlayed,
      Value<bool?> cubeless,
      required String assessmentJson,
      required String themesJson,
      required DateTime dueAt,
      Value<int> intervalDays,
      Value<int> successStreak,
      Value<DateTime?> lastAttemptAt,
    });
typedef $$PracticePositionsTableUpdateCompanionBuilder =
    PracticePositionsCompanion Function({
      Value<int> id,
      Value<int> gameId,
      Value<int> eventIndex,
      Value<DateTime> createdAt,
      Value<String> player,
      Value<String> eventsJson,
      Value<bool> isCrawford,
      Value<int?> matchLength,
      Value<int?> whiteScore,
      Value<int?> blackScore,
      Value<bool?> crawfordPlayed,
      Value<bool?> cubeless,
      Value<String> assessmentJson,
      Value<String> themesJson,
      Value<DateTime> dueAt,
      Value<int> intervalDays,
      Value<int> successStreak,
      Value<DateTime?> lastAttemptAt,
    });

final class $$PracticePositionsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $PracticePositionsTable,
          PracticePositionRow
        > {
  $$PracticePositionsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $GamesTable _gameIdTable(_$AppDatabase db) => db.games.createAlias(
    $_aliasNameGenerator(db.practicePositions.gameId, db.games.id),
  );

  $$GamesTableProcessedTableManager get gameId {
    final $_column = $_itemColumn<int>('game_id')!;

    final manager = $$GamesTableTableManager(
      $_db,
      $_db.games,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_gameIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$PracticeAttemptsTable, List<PracticeAttemptRow>>
  _practiceAttemptsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.practiceAttempts,
    aliasName: $_aliasNameGenerator(
      db.practicePositions.id,
      db.practiceAttempts.positionId,
    ),
  );

  $$PracticeAttemptsTableProcessedTableManager get practiceAttemptsRefs {
    final manager = $$PracticeAttemptsTableTableManager(
      $_db,
      $_db.practiceAttempts,
    ).filter((f) => f.positionId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _practiceAttemptsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$PracticePositionsTableFilterComposer
    extends Composer<_$AppDatabase, $PracticePositionsTable> {
  $$PracticePositionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get eventIndex => $composableBuilder(
    column: $table.eventIndex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get player => $composableBuilder(
    column: $table.player,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get eventsJson => $composableBuilder(
    column: $table.eventsJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isCrawford => $composableBuilder(
    column: $table.isCrawford,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get matchLength => $composableBuilder(
    column: $table.matchLength,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get whiteScore => $composableBuilder(
    column: $table.whiteScore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get blackScore => $composableBuilder(
    column: $table.blackScore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get crawfordPlayed => $composableBuilder(
    column: $table.crawfordPlayed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get cubeless => $composableBuilder(
    column: $table.cubeless,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get assessmentJson => $composableBuilder(
    column: $table.assessmentJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get themesJson => $composableBuilder(
    column: $table.themesJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dueAt => $composableBuilder(
    column: $table.dueAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get intervalDays => $composableBuilder(
    column: $table.intervalDays,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get successStreak => $composableBuilder(
    column: $table.successStreak,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastAttemptAt => $composableBuilder(
    column: $table.lastAttemptAt,
    builder: (column) => ColumnFilters(column),
  );

  $$GamesTableFilterComposer get gameId {
    final $$GamesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.gameId,
      referencedTable: $db.games,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GamesTableFilterComposer(
            $db: $db,
            $table: $db.games,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> practiceAttemptsRefs(
    Expression<bool> Function($$PracticeAttemptsTableFilterComposer f) f,
  ) {
    final $$PracticeAttemptsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.practiceAttempts,
      getReferencedColumn: (t) => t.positionId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PracticeAttemptsTableFilterComposer(
            $db: $db,
            $table: $db.practiceAttempts,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PracticePositionsTableOrderingComposer
    extends Composer<_$AppDatabase, $PracticePositionsTable> {
  $$PracticePositionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get eventIndex => $composableBuilder(
    column: $table.eventIndex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get player => $composableBuilder(
    column: $table.player,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get eventsJson => $composableBuilder(
    column: $table.eventsJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isCrawford => $composableBuilder(
    column: $table.isCrawford,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get matchLength => $composableBuilder(
    column: $table.matchLength,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get whiteScore => $composableBuilder(
    column: $table.whiteScore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get blackScore => $composableBuilder(
    column: $table.blackScore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get crawfordPlayed => $composableBuilder(
    column: $table.crawfordPlayed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get cubeless => $composableBuilder(
    column: $table.cubeless,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get assessmentJson => $composableBuilder(
    column: $table.assessmentJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get themesJson => $composableBuilder(
    column: $table.themesJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dueAt => $composableBuilder(
    column: $table.dueAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get intervalDays => $composableBuilder(
    column: $table.intervalDays,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get successStreak => $composableBuilder(
    column: $table.successStreak,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastAttemptAt => $composableBuilder(
    column: $table.lastAttemptAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$GamesTableOrderingComposer get gameId {
    final $$GamesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.gameId,
      referencedTable: $db.games,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GamesTableOrderingComposer(
            $db: $db,
            $table: $db.games,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PracticePositionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PracticePositionsTable> {
  $$PracticePositionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get eventIndex => $composableBuilder(
    column: $table.eventIndex,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<String> get player =>
      $composableBuilder(column: $table.player, builder: (column) => column);

  GeneratedColumn<String> get eventsJson => $composableBuilder(
    column: $table.eventsJson,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isCrawford => $composableBuilder(
    column: $table.isCrawford,
    builder: (column) => column,
  );

  GeneratedColumn<int> get matchLength => $composableBuilder(
    column: $table.matchLength,
    builder: (column) => column,
  );

  GeneratedColumn<int> get whiteScore => $composableBuilder(
    column: $table.whiteScore,
    builder: (column) => column,
  );

  GeneratedColumn<int> get blackScore => $composableBuilder(
    column: $table.blackScore,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get crawfordPlayed => $composableBuilder(
    column: $table.crawfordPlayed,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get cubeless =>
      $composableBuilder(column: $table.cubeless, builder: (column) => column);

  GeneratedColumn<String> get assessmentJson => $composableBuilder(
    column: $table.assessmentJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get themesJson => $composableBuilder(
    column: $table.themesJson,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get dueAt =>
      $composableBuilder(column: $table.dueAt, builder: (column) => column);

  GeneratedColumn<int> get intervalDays => $composableBuilder(
    column: $table.intervalDays,
    builder: (column) => column,
  );

  GeneratedColumn<int> get successStreak => $composableBuilder(
    column: $table.successStreak,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get lastAttemptAt => $composableBuilder(
    column: $table.lastAttemptAt,
    builder: (column) => column,
  );

  $$GamesTableAnnotationComposer get gameId {
    final $$GamesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.gameId,
      referencedTable: $db.games,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GamesTableAnnotationComposer(
            $db: $db,
            $table: $db.games,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> practiceAttemptsRefs<T extends Object>(
    Expression<T> Function($$PracticeAttemptsTableAnnotationComposer a) f,
  ) {
    final $$PracticeAttemptsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.practiceAttempts,
      getReferencedColumn: (t) => t.positionId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PracticeAttemptsTableAnnotationComposer(
            $db: $db,
            $table: $db.practiceAttempts,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PracticePositionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PracticePositionsTable,
          PracticePositionRow,
          $$PracticePositionsTableFilterComposer,
          $$PracticePositionsTableOrderingComposer,
          $$PracticePositionsTableAnnotationComposer,
          $$PracticePositionsTableCreateCompanionBuilder,
          $$PracticePositionsTableUpdateCompanionBuilder,
          (PracticePositionRow, $$PracticePositionsTableReferences),
          PracticePositionRow,
          PrefetchHooks Function({bool gameId, bool practiceAttemptsRefs})
        > {
  $$PracticePositionsTableTableManager(
    _$AppDatabase db,
    $PracticePositionsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PracticePositionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PracticePositionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PracticePositionsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> gameId = const Value.absent(),
                Value<int> eventIndex = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<String> player = const Value.absent(),
                Value<String> eventsJson = const Value.absent(),
                Value<bool> isCrawford = const Value.absent(),
                Value<int?> matchLength = const Value.absent(),
                Value<int?> whiteScore = const Value.absent(),
                Value<int?> blackScore = const Value.absent(),
                Value<bool?> crawfordPlayed = const Value.absent(),
                Value<bool?> cubeless = const Value.absent(),
                Value<String> assessmentJson = const Value.absent(),
                Value<String> themesJson = const Value.absent(),
                Value<DateTime> dueAt = const Value.absent(),
                Value<int> intervalDays = const Value.absent(),
                Value<int> successStreak = const Value.absent(),
                Value<DateTime?> lastAttemptAt = const Value.absent(),
              }) => PracticePositionsCompanion(
                id: id,
                gameId: gameId,
                eventIndex: eventIndex,
                createdAt: createdAt,
                player: player,
                eventsJson: eventsJson,
                isCrawford: isCrawford,
                matchLength: matchLength,
                whiteScore: whiteScore,
                blackScore: blackScore,
                crawfordPlayed: crawfordPlayed,
                cubeless: cubeless,
                assessmentJson: assessmentJson,
                themesJson: themesJson,
                dueAt: dueAt,
                intervalDays: intervalDays,
                successStreak: successStreak,
                lastAttemptAt: lastAttemptAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int gameId,
                required int eventIndex,
                required DateTime createdAt,
                required String player,
                required String eventsJson,
                required bool isCrawford,
                Value<int?> matchLength = const Value.absent(),
                Value<int?> whiteScore = const Value.absent(),
                Value<int?> blackScore = const Value.absent(),
                Value<bool?> crawfordPlayed = const Value.absent(),
                Value<bool?> cubeless = const Value.absent(),
                required String assessmentJson,
                required String themesJson,
                required DateTime dueAt,
                Value<int> intervalDays = const Value.absent(),
                Value<int> successStreak = const Value.absent(),
                Value<DateTime?> lastAttemptAt = const Value.absent(),
              }) => PracticePositionsCompanion.insert(
                id: id,
                gameId: gameId,
                eventIndex: eventIndex,
                createdAt: createdAt,
                player: player,
                eventsJson: eventsJson,
                isCrawford: isCrawford,
                matchLength: matchLength,
                whiteScore: whiteScore,
                blackScore: blackScore,
                crawfordPlayed: crawfordPlayed,
                cubeless: cubeless,
                assessmentJson: assessmentJson,
                themesJson: themesJson,
                dueAt: dueAt,
                intervalDays: intervalDays,
                successStreak: successStreak,
                lastAttemptAt: lastAttemptAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$PracticePositionsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({gameId = false, practiceAttemptsRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (practiceAttemptsRefs) db.practiceAttempts,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (gameId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.gameId,
                                    referencedTable:
                                        $$PracticePositionsTableReferences
                                            ._gameIdTable(db),
                                    referencedColumn:
                                        $$PracticePositionsTableReferences
                                            ._gameIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (practiceAttemptsRefs)
                        await $_getPrefetchedData<
                          PracticePositionRow,
                          $PracticePositionsTable,
                          PracticeAttemptRow
                        >(
                          currentTable: table,
                          referencedTable: $$PracticePositionsTableReferences
                              ._practiceAttemptsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PracticePositionsTableReferences(
                                db,
                                table,
                                p0,
                              ).practiceAttemptsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.positionId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$PracticePositionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PracticePositionsTable,
      PracticePositionRow,
      $$PracticePositionsTableFilterComposer,
      $$PracticePositionsTableOrderingComposer,
      $$PracticePositionsTableAnnotationComposer,
      $$PracticePositionsTableCreateCompanionBuilder,
      $$PracticePositionsTableUpdateCompanionBuilder,
      (PracticePositionRow, $$PracticePositionsTableReferences),
      PracticePositionRow,
      PrefetchHooks Function({bool gameId, bool practiceAttemptsRefs})
    >;
typedef $$PracticeAttemptsTableCreateCompanionBuilder =
    PracticeAttemptsCompanion Function({
      Value<int> id,
      required int positionId,
      required DateTime attemptedAt,
      Value<String?> assessmentJson,
      required bool passed,
      required bool revealed,
    });
typedef $$PracticeAttemptsTableUpdateCompanionBuilder =
    PracticeAttemptsCompanion Function({
      Value<int> id,
      Value<int> positionId,
      Value<DateTime> attemptedAt,
      Value<String?> assessmentJson,
      Value<bool> passed,
      Value<bool> revealed,
    });

final class $$PracticeAttemptsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $PracticeAttemptsTable,
          PracticeAttemptRow
        > {
  $$PracticeAttemptsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PracticePositionsTable _positionIdTable(_$AppDatabase db) =>
      db.practicePositions.createAlias(
        $_aliasNameGenerator(
          db.practiceAttempts.positionId,
          db.practicePositions.id,
        ),
      );

  $$PracticePositionsTableProcessedTableManager get positionId {
    final $_column = $_itemColumn<int>('position_id')!;

    final manager = $$PracticePositionsTableTableManager(
      $_db,
      $_db.practicePositions,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_positionIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PracticeAttemptsTableFilterComposer
    extends Composer<_$AppDatabase, $PracticeAttemptsTable> {
  $$PracticeAttemptsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get attemptedAt => $composableBuilder(
    column: $table.attemptedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get assessmentJson => $composableBuilder(
    column: $table.assessmentJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get passed => $composableBuilder(
    column: $table.passed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get revealed => $composableBuilder(
    column: $table.revealed,
    builder: (column) => ColumnFilters(column),
  );

  $$PracticePositionsTableFilterComposer get positionId {
    final $$PracticePositionsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.positionId,
      referencedTable: $db.practicePositions,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PracticePositionsTableFilterComposer(
            $db: $db,
            $table: $db.practicePositions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PracticeAttemptsTableOrderingComposer
    extends Composer<_$AppDatabase, $PracticeAttemptsTable> {
  $$PracticeAttemptsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get attemptedAt => $composableBuilder(
    column: $table.attemptedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get assessmentJson => $composableBuilder(
    column: $table.assessmentJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get passed => $composableBuilder(
    column: $table.passed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get revealed => $composableBuilder(
    column: $table.revealed,
    builder: (column) => ColumnOrderings(column),
  );

  $$PracticePositionsTableOrderingComposer get positionId {
    final $$PracticePositionsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.positionId,
      referencedTable: $db.practicePositions,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PracticePositionsTableOrderingComposer(
            $db: $db,
            $table: $db.practicePositions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PracticeAttemptsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PracticeAttemptsTable> {
  $$PracticeAttemptsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get attemptedAt => $composableBuilder(
    column: $table.attemptedAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get assessmentJson => $composableBuilder(
    column: $table.assessmentJson,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get passed =>
      $composableBuilder(column: $table.passed, builder: (column) => column);

  GeneratedColumn<bool> get revealed =>
      $composableBuilder(column: $table.revealed, builder: (column) => column);

  $$PracticePositionsTableAnnotationComposer get positionId {
    final $$PracticePositionsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.positionId,
          referencedTable: $db.practicePositions,
          getReferencedColumn: (t) => t.id,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$PracticePositionsTableAnnotationComposer(
                $db: $db,
                $table: $db.practicePositions,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return composer;
  }
}

class $$PracticeAttemptsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PracticeAttemptsTable,
          PracticeAttemptRow,
          $$PracticeAttemptsTableFilterComposer,
          $$PracticeAttemptsTableOrderingComposer,
          $$PracticeAttemptsTableAnnotationComposer,
          $$PracticeAttemptsTableCreateCompanionBuilder,
          $$PracticeAttemptsTableUpdateCompanionBuilder,
          (PracticeAttemptRow, $$PracticeAttemptsTableReferences),
          PracticeAttemptRow,
          PrefetchHooks Function({bool positionId})
        > {
  $$PracticeAttemptsTableTableManager(
    _$AppDatabase db,
    $PracticeAttemptsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PracticeAttemptsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PracticeAttemptsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PracticeAttemptsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> positionId = const Value.absent(),
                Value<DateTime> attemptedAt = const Value.absent(),
                Value<String?> assessmentJson = const Value.absent(),
                Value<bool> passed = const Value.absent(),
                Value<bool> revealed = const Value.absent(),
              }) => PracticeAttemptsCompanion(
                id: id,
                positionId: positionId,
                attemptedAt: attemptedAt,
                assessmentJson: assessmentJson,
                passed: passed,
                revealed: revealed,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int positionId,
                required DateTime attemptedAt,
                Value<String?> assessmentJson = const Value.absent(),
                required bool passed,
                required bool revealed,
              }) => PracticeAttemptsCompanion.insert(
                id: id,
                positionId: positionId,
                attemptedAt: attemptedAt,
                assessmentJson: assessmentJson,
                passed: passed,
                revealed: revealed,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$PracticeAttemptsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({positionId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (positionId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.positionId,
                                referencedTable:
                                    $$PracticeAttemptsTableReferences
                                        ._positionIdTable(db),
                                referencedColumn:
                                    $$PracticeAttemptsTableReferences
                                        ._positionIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PracticeAttemptsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PracticeAttemptsTable,
      PracticeAttemptRow,
      $$PracticeAttemptsTableFilterComposer,
      $$PracticeAttemptsTableOrderingComposer,
      $$PracticeAttemptsTableAnnotationComposer,
      $$PracticeAttemptsTableCreateCompanionBuilder,
      $$PracticeAttemptsTableUpdateCompanionBuilder,
      (PracticeAttemptRow, $$PracticeAttemptsTableReferences),
      PracticeAttemptRow,
      PrefetchHooks Function({bool positionId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$MatchesTableTableManager get matches =>
      $$MatchesTableTableManager(_db, _db.matches);
  $$GamesTableTableManager get games =>
      $$GamesTableTableManager(_db, _db.games);
  $$SettingsTableTableManager get settings =>
      $$SettingsTableTableManager(_db, _db.settings);
  $$OnlineSessionTableTableManager get onlineSession =>
      $$OnlineSessionTableTableManager(_db, _db.onlineSession);
  $$PracticePositionsTableTableManager get practicePositions =>
      $$PracticePositionsTableTableManager(_db, _db.practicePositions);
  $$PracticeAttemptsTableTableManager get practiceAttempts =>
      $$PracticeAttemptsTableTableManager(_db, _db.practiceAttempts);
}
