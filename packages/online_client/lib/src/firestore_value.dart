/// Encode/decode helpers for Firestore REST "typed value" JSON.
///
/// The REST API wraps every field in a single-key object naming its type, e.g.
/// `{"integerValue":"3"}`, `{"stringValue":"hi"}`, `{"mapValue":{"fields":{...}}}`.
/// These helpers convert between that representation and plain Dart values.
library;

import 'online_exception.dart';

/// Convert a plain Dart value into a Firestore typed-value map.
///
/// Supported: `null`, [bool], [int], [double], [String], [DateTime] (encoded as
/// `timestampValue`), [List] (recursively), and `Map<String, ...>` (recursively,
/// as `mapValue`). Throws [ArgumentError] for anything else.
Map<String, Object?> toFirestoreValue(Object? value) {
  if (value == null) return {'nullValue': null};
  if (value is bool) return {'booleanValue': value};
  if (value is int) return {'integerValue': value.toString()};
  if (value is double) return {'doubleValue': value};
  if (value is String) return {'stringValue': value};
  if (value is DateTime) {
    return {'timestampValue': value.toUtc().toIso8601String()};
  }
  if (value is List) {
    return {
      'arrayValue': {
        'values': [for (final e in value) toFirestoreValue(e)],
      },
    };
  }
  if (value is Map) {
    return {
      'mapValue': {
        'fields': {
          for (final entry in value.entries)
            entry.key.toString(): toFirestoreValue(entry.value),
        },
      },
    };
  }
  throw ArgumentError('unsupported Firestore value: ${value.runtimeType}');
}

/// Convert a Firestore typed-value map back into a plain Dart value.
///
/// `integerValue` decodes to [int], `doubleValue` to [double], `timestampValue`
/// to a UTC [DateTime], `mapValue`/`arrayValue` recursively. Throws
/// [MalformedDocumentException] on an unrecognised or malformed wrapper so a
/// poller can stop on a permanent bad document instead of retrying it forever.
Object? fromFirestoreValue(Map<String, Object?> value) {
  try {
    const wrappers = {
      'nullValue',
      'booleanValue',
      'integerValue',
      'doubleValue',
      'stringValue',
      'timestampValue',
      'mapValue',
      'arrayValue',
    };
    final keys = value.keys.where(wrappers.contains).toList();
    if (keys.length != 1 || value.length != 1) {
      throw FormatException('expected one Firestore value wrapper');
    }
    switch (keys.single) {
      case 'nullValue':
        final raw = value['nullValue'];
        if (raw != null && raw != 'NULL_VALUE') {
          throw FormatException('nullValue must be null or NULL_VALUE');
        }
        return null;
      case 'booleanValue':
        final raw = value['booleanValue'];
        if (raw is bool) return raw;
        throw FormatException('booleanValue must be a bool');
      case 'integerValue':
        final raw = value['integerValue'];
        if (raw is int) return raw;
        if (raw is String) return int.parse(raw);
        throw FormatException('integerValue must be an int or string');
      case 'doubleValue':
        final raw = value['doubleValue'];
        if (raw is num) return raw.toDouble();
        throw FormatException('doubleValue must be numeric');
      case 'stringValue':
        final raw = value['stringValue'];
        if (raw is String) return raw;
        throw FormatException('stringValue must be a string');
      case 'timestampValue':
        final raw = value['timestampValue'];
        if (raw is String) return DateTime.parse(raw).toUtc();
        throw FormatException('timestampValue must be a string');
      case 'mapValue':
        final raw = value['mapValue'];
        if (raw is! Map) throw FormatException('mapValue must be an object');
        final fields = raw['fields'];
        if (fields == null) return <String, Object?>{};
        if (fields is! Map) {
          throw FormatException('mapValue.fields must be an object');
        }
        final decoded = <String, Object?>{};
        for (final entry in fields.entries) {
          if (entry.key is! String || entry.value is! Map) {
            throw FormatException('mapValue.fields contains an invalid entry');
          }
          decoded[entry.key as String] = fromFirestoreValue(
            (entry.value as Map).cast<String, Object?>(),
          );
        }
        return decoded;
      case 'arrayValue':
        final raw = value['arrayValue'];
        if (raw is! Map) throw FormatException('arrayValue must be an object');
        final values = raw['values'];
        if (values == null) return <Object?>[];
        if (values is! List || values.any((item) => item is! Map)) {
          throw FormatException(
              'arrayValue.values must be typed value objects');
        }
        return [
          for (final item in values)
            fromFirestoreValue((item as Map).cast<String, Object?>()),
        ];
      default:
        throw FormatException('unrecognised Firestore value: $value');
    }
  } on OnlineException {
    rethrow;
  } on FormatException catch (error) {
    throw MalformedDocumentException(
        'malformed-firestore-value', error.message);
  } on TypeError catch (error) {
    throw MalformedDocumentException('malformed-firestore-value', '$error');
  } on ArgumentError catch (error) {
    throw MalformedDocumentException('malformed-firestore-value', '$error');
  }
}

/// Decode a document's `fields` object (a map of field-name → typed value) into
/// a plain `Map<String, Object?>`.
Map<String, Object?> decodeFields(Map<String, Object?> fields) {
  try {
    final decoded = <String, Object?>{};
    for (final entry in fields.entries) {
      if (entry.value is! Map) {
        throw const MalformedDocumentException(
          'malformed-firestore-value',
          'document field is not a typed value object',
        );
      }
      decoded[entry.key] = fromFirestoreValue(
        (entry.value as Map).cast<String, Object?>(),
      );
    }
    return decoded;
  } on OnlineException {
    rethrow;
  } on TypeError catch (error) {
    throw MalformedDocumentException('malformed-firestore-value', '$error');
  }
}

/// Encode a plain field map into a Firestore `fields` object.
Map<String, Object?> encodeFields(Map<String, Object?> fields) => {
      for (final entry in fields.entries)
        entry.key: toFirestoreValue(entry.value),
    };
