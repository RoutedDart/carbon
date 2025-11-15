import 'package:carbon/carbon.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:test/test.dart';

void main() {
  setUpAll(() async {
    await initializeDateFormatting('en');
    await initializeDateFormatting('fr');
  });

  setUp(() {
    Carbon.setLocale('en');
    Carbon.resetToStringFormat();
  });

  group('String formatting helpers', () {
    test('toDateString/toTimeString/toDateTimeString', () {
      final value = Carbon.parse('2025-11-14T08:30:45Z');
      expect(value.toDateString(), '2025-11-14');
      expect(value.toTimeString(), '08:30:45');
      expect(value.toDateTimeString(), '2025-11-14 08:30:45');
    });

    test('toDateTimeString pads zeroes', () {
      final value = Carbon.parse('2000-05-02T04:03:04Z');
      expect(value.toDateTimeString(), '2000-05-02 04:03:04');
    });

    test('toDateTimeLocalString precision selection', () {
      final value = Carbon.parse('1975-12-25T19:15:16.615342Z');
      expect(value.toDateTimeLocalString('second'), '1975-12-25T19:15:16');
      expect(value.toDateTimeLocalString('minute'), '1975-12-25T19:15');
      expect(
        value.toDateTimeLocalString('millisecond'),
        '1975-12-25T19:15:16.615',
      );
      expect(
        value.toDateTimeLocalString('microsecond'),
        '1975-12-25T19:15:16.615342',
      );
      expect(() => value.toDateTimeLocalString('hour'), throwsArgumentError);
    });

    test('toDateTimeLocalString retains precision for named zones', () async {
      await Carbon.configureTimeMachine(testing: true);
      addTearDown(Carbon.resetTimeMachineSupport);
      final value = Carbon.parse(
        '1975-12-25T19:15:16.615342Z',
      ).tz('America/New_York');
      expect(
        value.toDateTimeLocalString('millisecond'),
        '1975-12-25T14:15:16.615',
      );
      expect(
        value.toDateTimeLocalString('microsecond'),
        '1975-12-25T14:15:16.615342',
      );
    });

    test('formatted date helpers use locale', () {
      Carbon.setLocale('en');
      final value = Carbon.parse('1975-12-25T19:15:16Z');
      expect(value.toFormattedDateString(), 'Dec 25, 1975');
      expect(value.toDayDateTimeString(), 'Thu, Dec 25, 1975 7:15 PM');
      expect(value.toFormattedDayDateString(), 'Thu, Dec 25, 1975');
    });

    test('formatted date helpers honor non-English locales', () {
      Carbon.setLocale('fr');
      final value = Carbon.parse('1975-12-25T19:15:16Z');
      expect(value.toFormattedDateString(), 'déc. 25, 1975');
      expect(value.toDayDateTimeString(), 'jeu., déc. 25, 1975 7:15 PM');
      expect(value.toFormattedDayDateString(), 'jeu., déc. 25, 1975');
    });

    test('ISO and Atom strings honor offsets', () {
      final base = Carbon.parse('1975-12-25T14:15:16', timeZone: '-05:00');
      expect(base.toIso8601String(), '1975-12-25T19:15:16.000Z');
      expect(
        base.toIso8601String(keepOffset: true),
        '1975-12-25T14:15:16.000-05:00',
      );
      expect(base.toIso8601ZuluString(), '1975-12-25T19:15:16.000Z');
      expect(base.toAtomString(), '1975-12-25T14:15:16-05:00');
    });

    test('toIso8601String supports expanded years', () {
      final future = Carbon.create(
        year: 12021,
        month: 3,
        day: 4,
        hour: 5,
        minute: 6,
        second: 7,
      );
      expect(future.toIso8601String(), '+012021-03-04T05:06:07.000Z');
      final past = Carbon.create(
        year: -120,
        month: 1,
        day: 2,
        hour: 3,
        minute: 4,
        second: 5,
      );
      expect(past.toIso8601String(), '-000120-01-02T03:04:05.000Z');
    });

    test('toCookieString includes GMT offset', () {
      final base = Carbon.parse('1975-12-25T14:15:16', timeZone: '-05:00');
      expect(base.toCookieString(), 'Thursday, 25-Dec-1975 14:15:16 GMT-05:00');
    });

    test('RFC helpers mirror PHP formats', () async {
      await Carbon.configureTimeMachine(testing: true);
      addTearDown(Carbon.resetTimeMachineSupport);
      final base = Carbon.parse('1975-12-25T14:15:16', timeZone: '-05:00');
      expect(base.toRfc822String(), 'Thu, 25 Dec 75 14:15:16 -0500');
      expect(base.toRfc1036String(), 'Thu, 25 Dec 75 14:15:16 -0500');
      expect(base.toRfc1123String(), 'Thu, 25 Dec 1975 14:15:16 -0500');
      expect(base.toRfc2822String(), 'Thu, 25 Dec 1975 14:15:16 -0500');
      expect(base.toRssString(), 'Thu, 25 Dec 1975 14:15:16 -0500');
      expect(base.toRfc3339String(), '1975-12-25T14:15:16-05:00');
      final precise = Carbon.parse('1975-12-25T19:15:16.615342Z');
      expect(precise.toRfc3339String(), '1975-12-25T19:15:16+00:00');
      expect(
        precise.toRfc3339String(extended: true),
        '1975-12-25T19:15:16.615+00:00',
      );
      expect(precise.toW3cString(), '1975-12-25T19:15:16+00:00');
      expect(precise.toRfc7231String(), 'Thu, 25 Dec 1975 19:15:16 GMT');
      final named = Carbon.parse('1975-12-25T19:15:16Z').tz('America/New_York');
      expect(named.toRfc850String(), 'Thursday, 25-Dec-75 14:15:16 EST');
    });

    test('default toString mirrors PHP Carbon format', () {
      final value = Carbon.parse('1975-12-25T14:15:16', timeZone: '-05:00');
      expect(value.toString(), 'Thu Dec 25 1975 14:15:16 GMT-0500');
    });

    test('setToStringFormat accepts format strings', () {
      final value = Carbon.parse('1975-12-25T14:15:16');
      Carbon.setToStringFormat('yyyy');
      expect(value.toString(), '1975');
      Carbon.resetToStringFormat();
      expect(value.toString(), contains('Dec'));
    });

    test('setToStringFormat accepts callbacks', () {
      Carbon.setToStringFormat((carbon) => carbon.toDateString());
      final value = Carbon.parse('1975-12-25T14:15:16');
      expect(value.toString(), '1975-12-25');
      Carbon.resetToStringFormat();
    });

    test('setToStringFormat accepts Carbon-specific callbacks', () {
      Carbon.setToStringFormat((Carbon carbon) => carbon.toDateString());
      final mutable = Carbon.parse('1975-12-25T14:15:16');
      final immutable = mutable.toImmutable();
      expect(mutable.toString(), '1975-12-25');
      expect(immutable.toString(), '1975-12-25');
      Carbon.resetToStringFormat();
    });

    test('setToStringFormat accepts no-argument callbacks', () {
      Carbon.setToStringFormat(() => 'static');
      final value = Carbon.parse('1975-12-25T14:15:16');
      expect(value.toString(), 'static');
      Carbon.resetToStringFormat();
    });

    test('toJson surfaces locale and timezone', () {
      final value = Carbon.parse('1975-12-25T14:15:16', timeZone: '-05:00');
      final json = value.toJson();
      expect(json['iso'], value.toIso8601String());
      expect(json['epochMs'], value.toEpochMilliseconds());
      expect(json['locale'], 'en');
      expect(json['timeZone'], '-05:00');
    });
  });
}
