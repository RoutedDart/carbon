import 'dart:convert';

import 'package:carbon/carbon.dart';
import 'package:test/test.dart';

void main() {
  group('Serialization helpers', () {
    test('toJson exposes iso, epoch, locale, and timezone', () {
      final value = Carbon.parse(
        '2020-02-02T03:04:05Z',
      ).locale('fr').tz('-05:00');
      final json = value.toJson();
      expect(json['iso'], '2020-02-02T03:04:05.000Z');
      expect(json['epochMs'], isA<int>());
      expect(json['locale'], 'fr');
      expect(json['timeZone'], '-05:00');
    });

    test('fromJson parses simple ISO strings', () {
      final payload = jsonEncode('2024-01-01T00:00:00Z');
      final value = Carbon.fromJson(payload);
      expect(value.toIso8601String(), '2024-01-01T00:00:00.000Z');
    });

    test('fromJson parses ISO map payloads', () {
      final payload = jsonEncode({'iso': '1999-12-31T23:59:59Z'});
      final value = Carbon.fromJson(payload);
      expect(value.toIso8601String(), '1999-12-31T23:59:59.000Z');
    });

    test('fromJson parses epoch millis maps', () {
      final payload = jsonEncode({'epochMs': 0});
      final value = Carbon.fromJson(payload);
      expect(value.toIso8601String(), '1970-01-01T00:00:00.000Z');
    });

    test('fromJson rejects unsupported payloads', () {
      expect(
        () => Carbon.fromJson(jsonEncode({'foo': 'bar'})),
        throwsArgumentError,
      );
    });
  });
}
