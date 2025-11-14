import 'package:carbon/carbon.dart';
import 'package:test/test.dart';

void main() {
  group('Carbon PHP parity', () {
    test('Carbon exposes addCenturies', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addCenturies,
        returnsNormally,
        reason: 'Implement Carbon.addCenturies to match PHP Carbon.',
      );
    });

    test('Carbon exposes addCenturiesNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addCenturiesNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addCenturiesNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addCenturiesWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addCenturiesWithNoOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.addCenturiesWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addCenturiesWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addCenturiesWithOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.addCenturiesWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addCenturiesWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addCenturiesWithoutOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.addCenturiesWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addCentury,
        returnsNormally,
        reason: 'Implement Carbon.addCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes addCenturyNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addCenturyNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addCenturyNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addCenturyWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addCenturyWithNoOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.addCenturyWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addCenturyWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addCenturyWithOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addCenturyWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addCenturyWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addCenturyWithoutOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.addCenturyWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addDay,
        returnsNormally,
        reason: 'Implement Carbon.addDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes addDays', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addDays,
        returnsNormally,
        reason: 'Implement Carbon.addDays to match PHP Carbon.',
      );
    });

    test('Carbon exposes addDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addDecade,
        returnsNormally,
        reason: 'Implement Carbon.addDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes addDecadeNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addDecadeNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addDecadeNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addDecadeWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addDecadeWithNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addDecadeWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addDecadeWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addDecadeWithOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addDecadeWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addDecadeWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addDecadeWithoutOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.addDecadeWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addDecades', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addDecades,
        returnsNormally,
        reason: 'Implement Carbon.addDecades to match PHP Carbon.',
      );
    });

    test('Carbon exposes addDecadesNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addDecadesNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addDecadesNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addDecadesWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addDecadesWithNoOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.addDecadesWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addDecadesWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addDecadesWithOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addDecadesWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addDecadesWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addDecadesWithoutOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.addDecadesWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addHour,
        returnsNormally,
        reason: 'Implement Carbon.addHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes addHours', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addHours,
        returnsNormally,
        reason: 'Implement Carbon.addHours to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMicro', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMicro,
        returnsNormally,
        reason: 'Implement Carbon.addMicro to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMicros', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMicros,
        returnsNormally,
        reason: 'Implement Carbon.addMicros to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMicrosecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMicrosecond,
        returnsNormally,
        reason: 'Implement Carbon.addMicrosecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMicroseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMicroseconds,
        returnsNormally,
        reason: 'Implement Carbon.addMicroseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMillennia', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMillennia,
        returnsNormally,
        reason: 'Implement Carbon.addMillennia to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMillenniaNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMillenniaNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addMillenniaNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMillenniaWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMillenniaWithNoOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.addMillenniaWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMillenniaWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMillenniaWithOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.addMillenniaWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMillenniaWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMillenniaWithoutOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.addMillenniaWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMillennium,
        returnsNormally,
        reason: 'Implement Carbon.addMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMillenniumNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMillenniumNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addMillenniumNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMillenniumWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMillenniumWithNoOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.addMillenniumWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMillenniumWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMillenniumWithOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.addMillenniumWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMillenniumWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMillenniumWithoutOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.addMillenniumWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMilli', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMilli,
        returnsNormally,
        reason: 'Implement Carbon.addMilli to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMillis', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMillis,
        returnsNormally,
        reason: 'Implement Carbon.addMillis to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMillisecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMillisecond,
        returnsNormally,
        reason: 'Implement Carbon.addMillisecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMilliseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMilliseconds,
        returnsNormally,
        reason: 'Implement Carbon.addMilliseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMinute', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMinute,
        returnsNormally,
        reason: 'Implement Carbon.addMinute to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMinutes', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMinutes,
        returnsNormally,
        reason: 'Implement Carbon.addMinutes to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMonth,
        returnsNormally,
        reason: 'Implement Carbon.addMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMonthNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMonthNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addMonthNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMonthWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMonthWithNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addMonthWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMonthWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMonthWithOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addMonthWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMonthWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMonthWithoutOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addMonthWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMonths', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMonths,
        returnsNormally,
        reason: 'Implement Carbon.addMonths to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMonthsNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMonthsNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addMonthsNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMonthsWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMonthsWithNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addMonthsWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMonthsWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMonthsWithOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addMonthsWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addMonthsWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addMonthsWithoutOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.addMonthsWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addQuarter,
        returnsNormally,
        reason: 'Implement Carbon.addQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes addQuarterNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addQuarterNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addQuarterNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addQuarterWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addQuarterWithNoOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.addQuarterWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addQuarterWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addQuarterWithOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addQuarterWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addQuarterWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addQuarterWithoutOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.addQuarterWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addQuarters', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addQuarters,
        returnsNormally,
        reason: 'Implement Carbon.addQuarters to match PHP Carbon.',
      );
    });

    test('Carbon exposes addQuartersNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addQuartersNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addQuartersNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addQuartersWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addQuartersWithNoOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.addQuartersWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addQuartersWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addQuartersWithOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addQuartersWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addQuartersWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addQuartersWithoutOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.addQuartersWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addSecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addSecond,
        returnsNormally,
        reason: 'Implement Carbon.addSecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes addSeconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addSeconds,
        returnsNormally,
        reason: 'Implement Carbon.addSeconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCCenturies', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCCenturies,
        returnsNormally,
        reason: 'Implement Carbon.addUTCCenturies to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCCentury,
        returnsNormally,
        reason: 'Implement Carbon.addUTCCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCDay,
        returnsNormally,
        reason: 'Implement Carbon.addUTCDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCDays', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCDays,
        returnsNormally,
        reason: 'Implement Carbon.addUTCDays to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCDecade,
        returnsNormally,
        reason: 'Implement Carbon.addUTCDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCDecades', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCDecades,
        returnsNormally,
        reason: 'Implement Carbon.addUTCDecades to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCHour,
        returnsNormally,
        reason: 'Implement Carbon.addUTCHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCHours', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCHours,
        returnsNormally,
        reason: 'Implement Carbon.addUTCHours to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCMicro', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCMicro,
        returnsNormally,
        reason: 'Implement Carbon.addUTCMicro to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCMicros', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCMicros,
        returnsNormally,
        reason: 'Implement Carbon.addUTCMicros to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCMicrosecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCMicrosecond,
        returnsNormally,
        reason: 'Implement Carbon.addUTCMicrosecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCMicroseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCMicroseconds,
        returnsNormally,
        reason: 'Implement Carbon.addUTCMicroseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCMillennia', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCMillennia,
        returnsNormally,
        reason: 'Implement Carbon.addUTCMillennia to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCMillennium,
        returnsNormally,
        reason: 'Implement Carbon.addUTCMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCMilli', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCMilli,
        returnsNormally,
        reason: 'Implement Carbon.addUTCMilli to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCMillis', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCMillis,
        returnsNormally,
        reason: 'Implement Carbon.addUTCMillis to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCMillisecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCMillisecond,
        returnsNormally,
        reason: 'Implement Carbon.addUTCMillisecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCMilliseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCMilliseconds,
        returnsNormally,
        reason: 'Implement Carbon.addUTCMilliseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCMinute', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCMinute,
        returnsNormally,
        reason: 'Implement Carbon.addUTCMinute to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCMinutes', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCMinutes,
        returnsNormally,
        reason: 'Implement Carbon.addUTCMinutes to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCMonth,
        returnsNormally,
        reason: 'Implement Carbon.addUTCMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCMonths', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCMonths,
        returnsNormally,
        reason: 'Implement Carbon.addUTCMonths to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCQuarter,
        returnsNormally,
        reason: 'Implement Carbon.addUTCQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCQuarters', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCQuarters,
        returnsNormally,
        reason: 'Implement Carbon.addUTCQuarters to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCSecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCSecond,
        returnsNormally,
        reason: 'Implement Carbon.addUTCSecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCSeconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCSeconds,
        returnsNormally,
        reason: 'Implement Carbon.addUTCSeconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCWeek,
        returnsNormally,
        reason: 'Implement Carbon.addUTCWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCWeeks', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCWeeks,
        returnsNormally,
        reason: 'Implement Carbon.addUTCWeeks to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCYear,
        returnsNormally,
        reason: 'Implement Carbon.addUTCYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes addUTCYears', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addUTCYears,
        returnsNormally,
        reason: 'Implement Carbon.addUTCYears to match PHP Carbon.',
      );
    });

    test('Carbon exposes addWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addWeek,
        returnsNormally,
        reason: 'Implement Carbon.addWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes addWeekday', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addWeekday,
        returnsNormally,
        reason: 'Implement Carbon.addWeekday to match PHP Carbon.',
      );
    });

    test('Carbon exposes addWeekdays', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addWeekdays,
        returnsNormally,
        reason: 'Implement Carbon.addWeekdays to match PHP Carbon.',
      );
    });

    test('Carbon exposes addWeeks', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addWeeks,
        returnsNormally,
        reason: 'Implement Carbon.addWeeks to match PHP Carbon.',
      );
    });

    test('Carbon exposes addYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addYear,
        returnsNormally,
        reason: 'Implement Carbon.addYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes addYearNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addYearNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addYearNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addYearWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addYearWithNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addYearWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addYearWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addYearWithOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addYearWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addYearWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addYearWithoutOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addYearWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addYears', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addYears,
        returnsNormally,
        reason: 'Implement Carbon.addYears to match PHP Carbon.',
      );
    });

    test('Carbon exposes addYearsNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addYearsNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addYearsNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addYearsWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addYearsWithNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addYearsWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addYearsWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addYearsWithOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addYearsWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes addYearsWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.addYearsWithoutOverflow,
        returnsNormally,
        reason: 'Implement Carbon.addYearsWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilCenturies', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilCenturies,
        returnsNormally,
        reason: 'Implement Carbon.ceilCenturies to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilCentury,
        returnsNormally,
        reason: 'Implement Carbon.ceilCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilDay,
        returnsNormally,
        reason: 'Implement Carbon.ceilDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilDays', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilDays,
        returnsNormally,
        reason: 'Implement Carbon.ceilDays to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilDecade,
        returnsNormally,
        reason: 'Implement Carbon.ceilDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilDecades', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilDecades,
        returnsNormally,
        reason: 'Implement Carbon.ceilDecades to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilHour,
        returnsNormally,
        reason: 'Implement Carbon.ceilHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilHours', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilHours,
        returnsNormally,
        reason: 'Implement Carbon.ceilHours to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilMicrosecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilMicrosecond,
        returnsNormally,
        reason: 'Implement Carbon.ceilMicrosecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilMicroseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilMicroseconds,
        returnsNormally,
        reason: 'Implement Carbon.ceilMicroseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilMillennia', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilMillennia,
        returnsNormally,
        reason: 'Implement Carbon.ceilMillennia to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilMillennium,
        returnsNormally,
        reason: 'Implement Carbon.ceilMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilMillisecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilMillisecond,
        returnsNormally,
        reason: 'Implement Carbon.ceilMillisecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilMilliseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilMilliseconds,
        returnsNormally,
        reason: 'Implement Carbon.ceilMilliseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilMinute', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilMinute,
        returnsNormally,
        reason: 'Implement Carbon.ceilMinute to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilMinutes', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilMinutes,
        returnsNormally,
        reason: 'Implement Carbon.ceilMinutes to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilMonth,
        returnsNormally,
        reason: 'Implement Carbon.ceilMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilMonths', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilMonths,
        returnsNormally,
        reason: 'Implement Carbon.ceilMonths to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilQuarter,
        returnsNormally,
        reason: 'Implement Carbon.ceilQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilQuarters', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilQuarters,
        returnsNormally,
        reason: 'Implement Carbon.ceilQuarters to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilSecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilSecond,
        returnsNormally,
        reason: 'Implement Carbon.ceilSecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilSeconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilSeconds,
        returnsNormally,
        reason: 'Implement Carbon.ceilSeconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilYear,
        returnsNormally,
        reason: 'Implement Carbon.ceilYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes ceilYears', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.ceilYears,
        returnsNormally,
        reason: 'Implement Carbon.ceilYears to match PHP Carbon.',
      );
    });

    test('Carbon exposes centuriesInMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.centuriesInMillennium,
        returnsNormally,
        reason: 'Implement Carbon.centuriesInMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes centuriesUntil', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.centuriesUntil,
        returnsNormally,
        reason: 'Implement Carbon.centuriesUntil to match PHP Carbon.',
      );
    });

    test('Carbon exposes centuryOfMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.centuryOfMillennium,
        returnsNormally,
        reason: 'Implement Carbon.centuryOfMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes day', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.day,
        returnsNormally,
        reason: 'Implement Carbon.day to match PHP Carbon.',
      );
    });

    test('Carbon exposes dayOfCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.dayOfCentury,
        returnsNormally,
        reason: 'Implement Carbon.dayOfCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes dayOfDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.dayOfDecade,
        returnsNormally,
        reason: 'Implement Carbon.dayOfDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes dayOfMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.dayOfMillennium,
        returnsNormally,
        reason: 'Implement Carbon.dayOfMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes dayOfMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.dayOfMonth,
        returnsNormally,
        reason: 'Implement Carbon.dayOfMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes dayOfQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.dayOfQuarter,
        returnsNormally,
        reason: 'Implement Carbon.dayOfQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes dayOfWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.dayOfWeek,
        returnsNormally,
        reason: 'Implement Carbon.dayOfWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes days', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.days,
        returnsNormally,
        reason: 'Implement Carbon.days to match PHP Carbon.',
      );
    });

    test('Carbon exposes daysInCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.daysInCentury,
        returnsNormally,
        reason: 'Implement Carbon.daysInCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes daysInDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.daysInDecade,
        returnsNormally,
        reason: 'Implement Carbon.daysInDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes daysInMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.daysInMillennium,
        returnsNormally,
        reason: 'Implement Carbon.daysInMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes daysInMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.daysInMonth,
        returnsNormally,
        reason: 'Implement Carbon.daysInMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes daysInQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.daysInQuarter,
        returnsNormally,
        reason: 'Implement Carbon.daysInQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes daysInWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.daysInWeek,
        returnsNormally,
        reason: 'Implement Carbon.daysInWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes daysInYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.daysInYear,
        returnsNormally,
        reason: 'Implement Carbon.daysInYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes daysUntil', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.daysUntil,
        returnsNormally,
        reason: 'Implement Carbon.daysUntil to match PHP Carbon.',
      );
    });

    test('Carbon exposes decadeOfCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.decadeOfCentury,
        returnsNormally,
        reason: 'Implement Carbon.decadeOfCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes decadeOfMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.decadeOfMillennium,
        returnsNormally,
        reason: 'Implement Carbon.decadeOfMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes decadesInCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.decadesInCentury,
        returnsNormally,
        reason: 'Implement Carbon.decadesInCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes decadesInMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.decadesInMillennium,
        returnsNormally,
        reason: 'Implement Carbon.decadesInMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes decadesUntil', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.decadesUntil,
        returnsNormally,
        reason: 'Implement Carbon.decadesUntil to match PHP Carbon.',
      );
    });

    test('Carbon exposes diffInUTCCenturies', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.diffInUTCCenturies,
        returnsNormally,
        reason: 'Implement Carbon.diffInUTCCenturies to match PHP Carbon.',
      );
    });

    test('Carbon exposes diffInUTCDays', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.diffInUTCDays,
        returnsNormally,
        reason: 'Implement Carbon.diffInUTCDays to match PHP Carbon.',
      );
    });

    test('Carbon exposes diffInUTCDecades', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.diffInUTCDecades,
        returnsNormally,
        reason: 'Implement Carbon.diffInUTCDecades to match PHP Carbon.',
      );
    });

    test('Carbon exposes diffInUTCHours', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.diffInUTCHours,
        returnsNormally,
        reason: 'Implement Carbon.diffInUTCHours to match PHP Carbon.',
      );
    });

    test('Carbon exposes diffInUTCMicros', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.diffInUTCMicros,
        returnsNormally,
        reason: 'Implement Carbon.diffInUTCMicros to match PHP Carbon.',
      );
    });

    test('Carbon exposes diffInUTCMicroseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.diffInUTCMicroseconds,
        returnsNormally,
        reason: 'Implement Carbon.diffInUTCMicroseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes diffInUTCMillennia', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.diffInUTCMillennia,
        returnsNormally,
        reason: 'Implement Carbon.diffInUTCMillennia to match PHP Carbon.',
      );
    });

    test('Carbon exposes diffInUTCMillis', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.diffInUTCMillis,
        returnsNormally,
        reason: 'Implement Carbon.diffInUTCMillis to match PHP Carbon.',
      );
    });

    test('Carbon exposes diffInUTCMilliseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.diffInUTCMilliseconds,
        returnsNormally,
        reason: 'Implement Carbon.diffInUTCMilliseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes diffInUTCMinutes', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.diffInUTCMinutes,
        returnsNormally,
        reason: 'Implement Carbon.diffInUTCMinutes to match PHP Carbon.',
      );
    });

    test('Carbon exposes diffInUTCMonths', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.diffInUTCMonths,
        returnsNormally,
        reason: 'Implement Carbon.diffInUTCMonths to match PHP Carbon.',
      );
    });

    test('Carbon exposes diffInUTCQuarters', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.diffInUTCQuarters,
        returnsNormally,
        reason: 'Implement Carbon.diffInUTCQuarters to match PHP Carbon.',
      );
    });

    test('Carbon exposes diffInUTCSeconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.diffInUTCSeconds,
        returnsNormally,
        reason: 'Implement Carbon.diffInUTCSeconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes diffInUTCWeeks', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.diffInUTCWeeks,
        returnsNormally,
        reason: 'Implement Carbon.diffInUTCWeeks to match PHP Carbon.',
      );
    });

    test('Carbon exposes diffInUTCYears', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.diffInUTCYears,
        returnsNormally,
        reason: 'Implement Carbon.diffInUTCYears to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorCenturies', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorCenturies,
        returnsNormally,
        reason: 'Implement Carbon.floorCenturies to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorCentury,
        returnsNormally,
        reason: 'Implement Carbon.floorCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorDay,
        returnsNormally,
        reason: 'Implement Carbon.floorDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorDays', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorDays,
        returnsNormally,
        reason: 'Implement Carbon.floorDays to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorDecade,
        returnsNormally,
        reason: 'Implement Carbon.floorDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorDecades', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorDecades,
        returnsNormally,
        reason: 'Implement Carbon.floorDecades to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorHour,
        returnsNormally,
        reason: 'Implement Carbon.floorHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorHours', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorHours,
        returnsNormally,
        reason: 'Implement Carbon.floorHours to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorMicrosecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorMicrosecond,
        returnsNormally,
        reason: 'Implement Carbon.floorMicrosecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorMicroseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorMicroseconds,
        returnsNormally,
        reason: 'Implement Carbon.floorMicroseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorMillennia', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorMillennia,
        returnsNormally,
        reason: 'Implement Carbon.floorMillennia to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorMillennium,
        returnsNormally,
        reason: 'Implement Carbon.floorMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorMillisecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorMillisecond,
        returnsNormally,
        reason: 'Implement Carbon.floorMillisecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorMilliseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorMilliseconds,
        returnsNormally,
        reason: 'Implement Carbon.floorMilliseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorMinute', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorMinute,
        returnsNormally,
        reason: 'Implement Carbon.floorMinute to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorMinutes', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorMinutes,
        returnsNormally,
        reason: 'Implement Carbon.floorMinutes to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorMonth,
        returnsNormally,
        reason: 'Implement Carbon.floorMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorMonths', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorMonths,
        returnsNormally,
        reason: 'Implement Carbon.floorMonths to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorQuarter,
        returnsNormally,
        reason: 'Implement Carbon.floorQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorQuarters', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorQuarters,
        returnsNormally,
        reason: 'Implement Carbon.floorQuarters to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorSecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorSecond,
        returnsNormally,
        reason: 'Implement Carbon.floorSecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorSeconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorSeconds,
        returnsNormally,
        reason: 'Implement Carbon.floorSeconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorYear,
        returnsNormally,
        reason: 'Implement Carbon.floorYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes floorYears', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.floorYears,
        returnsNormally,
        reason: 'Implement Carbon.floorYears to match PHP Carbon.',
      );
    });

    test('Carbon exposes hour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.hour,
        returnsNormally,
        reason: 'Implement Carbon.hour to match PHP Carbon.',
      );
    });

    test('Carbon exposes hourOfCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.hourOfCentury,
        returnsNormally,
        reason: 'Implement Carbon.hourOfCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes hourOfDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.hourOfDay,
        returnsNormally,
        reason: 'Implement Carbon.hourOfDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes hourOfDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.hourOfDecade,
        returnsNormally,
        reason: 'Implement Carbon.hourOfDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes hourOfMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.hourOfMillennium,
        returnsNormally,
        reason: 'Implement Carbon.hourOfMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes hourOfMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.hourOfMonth,
        returnsNormally,
        reason: 'Implement Carbon.hourOfMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes hourOfQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.hourOfQuarter,
        returnsNormally,
        reason: 'Implement Carbon.hourOfQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes hourOfWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.hourOfWeek,
        returnsNormally,
        reason: 'Implement Carbon.hourOfWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes hourOfYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.hourOfYear,
        returnsNormally,
        reason: 'Implement Carbon.hourOfYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes hours', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.hours,
        returnsNormally,
        reason: 'Implement Carbon.hours to match PHP Carbon.',
      );
    });

    test('Carbon exposes hoursInCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.hoursInCentury,
        returnsNormally,
        reason: 'Implement Carbon.hoursInCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes hoursInDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.hoursInDay,
        returnsNormally,
        reason: 'Implement Carbon.hoursInDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes hoursInDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.hoursInDecade,
        returnsNormally,
        reason: 'Implement Carbon.hoursInDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes hoursInMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.hoursInMillennium,
        returnsNormally,
        reason: 'Implement Carbon.hoursInMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes hoursInMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.hoursInMonth,
        returnsNormally,
        reason: 'Implement Carbon.hoursInMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes hoursInQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.hoursInQuarter,
        returnsNormally,
        reason: 'Implement Carbon.hoursInQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes hoursInWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.hoursInWeek,
        returnsNormally,
        reason: 'Implement Carbon.hoursInWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes hoursInYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.hoursInYear,
        returnsNormally,
        reason: 'Implement Carbon.hoursInYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes hoursUntil', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.hoursUntil,
        returnsNormally,
        reason: 'Implement Carbon.hoursUntil to match PHP Carbon.',
      );
    });

    test('Carbon exposes isCurrentCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isCurrentCentury,
        returnsNormally,
        reason: 'Implement Carbon.isCurrentCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes isCurrentDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isCurrentDay,
        returnsNormally,
        reason: 'Implement Carbon.isCurrentDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes isCurrentDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isCurrentDecade,
        returnsNormally,
        reason: 'Implement Carbon.isCurrentDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes isCurrentHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isCurrentHour,
        returnsNormally,
        reason: 'Implement Carbon.isCurrentHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes isCurrentMicro', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isCurrentMicro,
        returnsNormally,
        reason: 'Implement Carbon.isCurrentMicro to match PHP Carbon.',
      );
    });

    test('Carbon exposes isCurrentMicrosecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isCurrentMicrosecond,
        returnsNormally,
        reason: 'Implement Carbon.isCurrentMicrosecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes isCurrentMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isCurrentMillennium,
        returnsNormally,
        reason: 'Implement Carbon.isCurrentMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes isCurrentMilli', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isCurrentMilli,
        returnsNormally,
        reason: 'Implement Carbon.isCurrentMilli to match PHP Carbon.',
      );
    });

    test('Carbon exposes isCurrentMillisecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isCurrentMillisecond,
        returnsNormally,
        reason: 'Implement Carbon.isCurrentMillisecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes isCurrentMinute', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isCurrentMinute,
        returnsNormally,
        reason: 'Implement Carbon.isCurrentMinute to match PHP Carbon.',
      );
    });

    test('Carbon exposes isCurrentMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isCurrentMonth,
        returnsNormally,
        reason: 'Implement Carbon.isCurrentMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes isCurrentQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isCurrentQuarter,
        returnsNormally,
        reason: 'Implement Carbon.isCurrentQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes isCurrentSecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isCurrentSecond,
        returnsNormally,
        reason: 'Implement Carbon.isCurrentSecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes isCurrentWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isCurrentWeek,
        returnsNormally,
        reason: 'Implement Carbon.isCurrentWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes isCurrentYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isCurrentYear,
        returnsNormally,
        reason: 'Implement Carbon.isCurrentYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes isDST', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isDST,
        returnsNormally,
        reason: 'Implement Carbon.isDST to match PHP Carbon.',
      );
    });

    test('Carbon exposes isFriday', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isFriday,
        returnsNormally,
        reason: 'Implement Carbon.isFriday to match PHP Carbon.',
      );
    });

    test('Carbon exposes isLastCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isLastCentury,
        returnsNormally,
        reason: 'Implement Carbon.isLastCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes isLastDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isLastDay,
        returnsNormally,
        reason: 'Implement Carbon.isLastDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes isLastDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isLastDecade,
        returnsNormally,
        reason: 'Implement Carbon.isLastDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes isLastHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isLastHour,
        returnsNormally,
        reason: 'Implement Carbon.isLastHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes isLastMicro', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isLastMicro,
        returnsNormally,
        reason: 'Implement Carbon.isLastMicro to match PHP Carbon.',
      );
    });

    test('Carbon exposes isLastMicrosecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isLastMicrosecond,
        returnsNormally,
        reason: 'Implement Carbon.isLastMicrosecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes isLastMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isLastMillennium,
        returnsNormally,
        reason: 'Implement Carbon.isLastMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes isLastMilli', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isLastMilli,
        returnsNormally,
        reason: 'Implement Carbon.isLastMilli to match PHP Carbon.',
      );
    });

    test('Carbon exposes isLastMillisecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isLastMillisecond,
        returnsNormally,
        reason: 'Implement Carbon.isLastMillisecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes isLastMinute', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isLastMinute,
        returnsNormally,
        reason: 'Implement Carbon.isLastMinute to match PHP Carbon.',
      );
    });

    test('Carbon exposes isLastMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isLastMonth,
        returnsNormally,
        reason: 'Implement Carbon.isLastMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes isLastQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isLastQuarter,
        returnsNormally,
        reason: 'Implement Carbon.isLastQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes isLastSecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isLastSecond,
        returnsNormally,
        reason: 'Implement Carbon.isLastSecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes isLastWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isLastWeek,
        returnsNormally,
        reason: 'Implement Carbon.isLastWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes isLastYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isLastYear,
        returnsNormally,
        reason: 'Implement Carbon.isLastYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes isLocal', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isLocal,
        returnsNormally,
        reason: 'Implement Carbon.isLocal to match PHP Carbon.',
      );
    });

    test('Carbon exposes isMonday', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isMonday,
        returnsNormally,
        reason: 'Implement Carbon.isMonday to match PHP Carbon.',
      );
    });

    test('Carbon exposes isMutable', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isMutable,
        returnsNormally,
        reason: 'Implement Carbon.isMutable to match PHP Carbon.',
      );
    });

    test('Carbon exposes isNextCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isNextCentury,
        returnsNormally,
        reason: 'Implement Carbon.isNextCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes isNextDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isNextDay,
        returnsNormally,
        reason: 'Implement Carbon.isNextDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes isNextDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isNextDecade,
        returnsNormally,
        reason: 'Implement Carbon.isNextDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes isNextHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isNextHour,
        returnsNormally,
        reason: 'Implement Carbon.isNextHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes isNextMicro', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isNextMicro,
        returnsNormally,
        reason: 'Implement Carbon.isNextMicro to match PHP Carbon.',
      );
    });

    test('Carbon exposes isNextMicrosecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isNextMicrosecond,
        returnsNormally,
        reason: 'Implement Carbon.isNextMicrosecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes isNextMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isNextMillennium,
        returnsNormally,
        reason: 'Implement Carbon.isNextMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes isNextMilli', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isNextMilli,
        returnsNormally,
        reason: 'Implement Carbon.isNextMilli to match PHP Carbon.',
      );
    });

    test('Carbon exposes isNextMillisecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isNextMillisecond,
        returnsNormally,
        reason: 'Implement Carbon.isNextMillisecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes isNextMinute', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isNextMinute,
        returnsNormally,
        reason: 'Implement Carbon.isNextMinute to match PHP Carbon.',
      );
    });

    test('Carbon exposes isNextMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isNextMonth,
        returnsNormally,
        reason: 'Implement Carbon.isNextMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes isNextQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isNextQuarter,
        returnsNormally,
        reason: 'Implement Carbon.isNextQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes isNextSecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isNextSecond,
        returnsNormally,
        reason: 'Implement Carbon.isNextSecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes isNextWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isNextWeek,
        returnsNormally,
        reason: 'Implement Carbon.isNextWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes isNextYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isNextYear,
        returnsNormally,
        reason: 'Implement Carbon.isNextYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes isSameCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isSameCentury,
        returnsNormally,
        reason: 'Implement Carbon.isSameCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes isSameDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isSameDay,
        returnsNormally,
        reason: 'Implement Carbon.isSameDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes isSameDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isSameDecade,
        returnsNormally,
        reason: 'Implement Carbon.isSameDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes isSameHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isSameHour,
        returnsNormally,
        reason: 'Implement Carbon.isSameHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes isSameMicro', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isSameMicro,
        returnsNormally,
        reason: 'Implement Carbon.isSameMicro to match PHP Carbon.',
      );
    });

    test('Carbon exposes isSameMicrosecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isSameMicrosecond,
        returnsNormally,
        reason: 'Implement Carbon.isSameMicrosecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes isSameMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isSameMillennium,
        returnsNormally,
        reason: 'Implement Carbon.isSameMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes isSameMilli', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isSameMilli,
        returnsNormally,
        reason: 'Implement Carbon.isSameMilli to match PHP Carbon.',
      );
    });

    test('Carbon exposes isSameMillisecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isSameMillisecond,
        returnsNormally,
        reason: 'Implement Carbon.isSameMillisecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes isSameMinute', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isSameMinute,
        returnsNormally,
        reason: 'Implement Carbon.isSameMinute to match PHP Carbon.',
      );
    });

    test('Carbon exposes isSameSecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isSameSecond,
        returnsNormally,
        reason: 'Implement Carbon.isSameSecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes isSameWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isSameWeek,
        returnsNormally,
        reason: 'Implement Carbon.isSameWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes isSameYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isSameYear,
        returnsNormally,
        reason: 'Implement Carbon.isSameYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes isSaturday', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isSaturday,
        returnsNormally,
        reason: 'Implement Carbon.isSaturday to match PHP Carbon.',
      );
    });

    test('Carbon exposes isSunday', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isSunday,
        returnsNormally,
        reason: 'Implement Carbon.isSunday to match PHP Carbon.',
      );
    });

    test('Carbon exposes isThursday', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isThursday,
        returnsNormally,
        reason: 'Implement Carbon.isThursday to match PHP Carbon.',
      );
    });

    test('Carbon exposes isTuesday', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isTuesday,
        returnsNormally,
        reason: 'Implement Carbon.isTuesday to match PHP Carbon.',
      );
    });

    test('Carbon exposes isUtc', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isUtc,
        returnsNormally,
        reason: 'Implement Carbon.isUtc to match PHP Carbon.',
      );
    });

    test('Carbon exposes isValid', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isValid,
        returnsNormally,
        reason: 'Implement Carbon.isValid to match PHP Carbon.',
      );
    });

    test('Carbon exposes isWednesday', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.isWednesday,
        returnsNormally,
        reason: 'Implement Carbon.isWednesday to match PHP Carbon.',
      );
    });

    test('Carbon exposes longAbsoluteDiffForHumans', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.longAbsoluteDiffForHumans,
        returnsNormally,
        reason:
            'Implement Carbon.longAbsoluteDiffForHumans to match PHP Carbon.',
      );
    });

    test('Carbon exposes longRelativeDiffForHumans', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.longRelativeDiffForHumans,
        returnsNormally,
        reason:
            'Implement Carbon.longRelativeDiffForHumans to match PHP Carbon.',
      );
    });

    test('Carbon exposes longRelativeToNowDiffForHumans', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.longRelativeToNowDiffForHumans,
        returnsNormally,
        reason:
            'Implement Carbon.longRelativeToNowDiffForHumans to match PHP Carbon.',
      );
    });

    test('Carbon exposes longRelativeToOtherDiffForHumans', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.longRelativeToOtherDiffForHumans,
        returnsNormally,
        reason:
            'Implement Carbon.longRelativeToOtherDiffForHumans to match PHP Carbon.',
      );
    });

    test('Carbon exposes micro', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.micro,
        returnsNormally,
        reason: 'Implement Carbon.micro to match PHP Carbon.',
      );
    });

    test('Carbon exposes micros', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.micros,
        returnsNormally,
        reason: 'Implement Carbon.micros to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsUntil', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsUntil,
        returnsNormally,
        reason: 'Implement Carbon.microsUntil to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecond,
        returnsNormally,
        reason: 'Implement Carbon.microsecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondOfCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondOfCentury,
        returnsNormally,
        reason: 'Implement Carbon.microsecondOfCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondOfDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondOfDay,
        returnsNormally,
        reason: 'Implement Carbon.microsecondOfDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondOfDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondOfDecade,
        returnsNormally,
        reason: 'Implement Carbon.microsecondOfDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondOfHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondOfHour,
        returnsNormally,
        reason: 'Implement Carbon.microsecondOfHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondOfMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondOfMillennium,
        returnsNormally,
        reason: 'Implement Carbon.microsecondOfMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondOfMillisecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondOfMillisecond,
        returnsNormally,
        reason:
            'Implement Carbon.microsecondOfMillisecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondOfMinute', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondOfMinute,
        returnsNormally,
        reason: 'Implement Carbon.microsecondOfMinute to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondOfMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondOfMonth,
        returnsNormally,
        reason: 'Implement Carbon.microsecondOfMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondOfQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondOfQuarter,
        returnsNormally,
        reason: 'Implement Carbon.microsecondOfQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondOfSecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondOfSecond,
        returnsNormally,
        reason: 'Implement Carbon.microsecondOfSecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondOfWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondOfWeek,
        returnsNormally,
        reason: 'Implement Carbon.microsecondOfWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondOfYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondOfYear,
        returnsNormally,
        reason: 'Implement Carbon.microsecondOfYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes microseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microseconds,
        returnsNormally,
        reason: 'Implement Carbon.microseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondsInCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondsInCentury,
        returnsNormally,
        reason: 'Implement Carbon.microsecondsInCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondsInDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondsInDay,
        returnsNormally,
        reason: 'Implement Carbon.microsecondsInDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondsInDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondsInDecade,
        returnsNormally,
        reason: 'Implement Carbon.microsecondsInDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondsInHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondsInHour,
        returnsNormally,
        reason: 'Implement Carbon.microsecondsInHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondsInMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondsInMillennium,
        returnsNormally,
        reason:
            'Implement Carbon.microsecondsInMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondsInMillisecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondsInMillisecond,
        returnsNormally,
        reason:
            'Implement Carbon.microsecondsInMillisecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondsInMinute', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondsInMinute,
        returnsNormally,
        reason: 'Implement Carbon.microsecondsInMinute to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondsInMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondsInMonth,
        returnsNormally,
        reason: 'Implement Carbon.microsecondsInMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondsInQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondsInQuarter,
        returnsNormally,
        reason: 'Implement Carbon.microsecondsInQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondsInSecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondsInSecond,
        returnsNormally,
        reason: 'Implement Carbon.microsecondsInSecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondsInWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondsInWeek,
        returnsNormally,
        reason: 'Implement Carbon.microsecondsInWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondsInYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondsInYear,
        returnsNormally,
        reason: 'Implement Carbon.microsecondsInYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes microsecondsUntil', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.microsecondsUntil,
        returnsNormally,
        reason: 'Implement Carbon.microsecondsUntil to match PHP Carbon.',
      );
    });

    test('Carbon exposes millenniaUntil', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millenniaUntil,
        returnsNormally,
        reason: 'Implement Carbon.millenniaUntil to match PHP Carbon.',
      );
    });

    test('Carbon exposes milli', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.milli,
        returnsNormally,
        reason: 'Implement Carbon.milli to match PHP Carbon.',
      );
    });

    test('Carbon exposes millis', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millis,
        returnsNormally,
        reason: 'Implement Carbon.millis to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisUntil', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisUntil,
        returnsNormally,
        reason: 'Implement Carbon.millisUntil to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecond,
        returnsNormally,
        reason: 'Implement Carbon.millisecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondOfCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondOfCentury,
        returnsNormally,
        reason: 'Implement Carbon.millisecondOfCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondOfDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondOfDay,
        returnsNormally,
        reason: 'Implement Carbon.millisecondOfDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondOfDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondOfDecade,
        returnsNormally,
        reason: 'Implement Carbon.millisecondOfDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondOfHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondOfHour,
        returnsNormally,
        reason: 'Implement Carbon.millisecondOfHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondOfMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondOfMillennium,
        returnsNormally,
        reason: 'Implement Carbon.millisecondOfMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondOfMinute', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondOfMinute,
        returnsNormally,
        reason: 'Implement Carbon.millisecondOfMinute to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondOfMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondOfMonth,
        returnsNormally,
        reason: 'Implement Carbon.millisecondOfMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondOfQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondOfQuarter,
        returnsNormally,
        reason: 'Implement Carbon.millisecondOfQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondOfSecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondOfSecond,
        returnsNormally,
        reason: 'Implement Carbon.millisecondOfSecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondOfWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondOfWeek,
        returnsNormally,
        reason: 'Implement Carbon.millisecondOfWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondOfYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondOfYear,
        returnsNormally,
        reason: 'Implement Carbon.millisecondOfYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes milliseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.milliseconds,
        returnsNormally,
        reason: 'Implement Carbon.milliseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondsInCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondsInCentury,
        returnsNormally,
        reason: 'Implement Carbon.millisecondsInCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondsInDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondsInDay,
        returnsNormally,
        reason: 'Implement Carbon.millisecondsInDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondsInDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondsInDecade,
        returnsNormally,
        reason: 'Implement Carbon.millisecondsInDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondsInHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondsInHour,
        returnsNormally,
        reason: 'Implement Carbon.millisecondsInHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondsInMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondsInMillennium,
        returnsNormally,
        reason:
            'Implement Carbon.millisecondsInMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondsInMinute', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondsInMinute,
        returnsNormally,
        reason: 'Implement Carbon.millisecondsInMinute to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondsInMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondsInMonth,
        returnsNormally,
        reason: 'Implement Carbon.millisecondsInMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondsInQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondsInQuarter,
        returnsNormally,
        reason: 'Implement Carbon.millisecondsInQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondsInSecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondsInSecond,
        returnsNormally,
        reason: 'Implement Carbon.millisecondsInSecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondsInWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondsInWeek,
        returnsNormally,
        reason: 'Implement Carbon.millisecondsInWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondsInYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondsInYear,
        returnsNormally,
        reason: 'Implement Carbon.millisecondsInYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes millisecondsUntil', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.millisecondsUntil,
        returnsNormally,
        reason: 'Implement Carbon.millisecondsUntil to match PHP Carbon.',
      );
    });

    test('Carbon exposes minute', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minute,
        returnsNormally,
        reason: 'Implement Carbon.minute to match PHP Carbon.',
      );
    });

    test('Carbon exposes minuteOfCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minuteOfCentury,
        returnsNormally,
        reason: 'Implement Carbon.minuteOfCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes minuteOfDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minuteOfDay,
        returnsNormally,
        reason: 'Implement Carbon.minuteOfDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes minuteOfDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minuteOfDecade,
        returnsNormally,
        reason: 'Implement Carbon.minuteOfDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes minuteOfHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minuteOfHour,
        returnsNormally,
        reason: 'Implement Carbon.minuteOfHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes minuteOfMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minuteOfMillennium,
        returnsNormally,
        reason: 'Implement Carbon.minuteOfMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes minuteOfMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minuteOfMonth,
        returnsNormally,
        reason: 'Implement Carbon.minuteOfMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes minuteOfQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minuteOfQuarter,
        returnsNormally,
        reason: 'Implement Carbon.minuteOfQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes minuteOfWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minuteOfWeek,
        returnsNormally,
        reason: 'Implement Carbon.minuteOfWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes minuteOfYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minuteOfYear,
        returnsNormally,
        reason: 'Implement Carbon.minuteOfYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes minutes', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minutes,
        returnsNormally,
        reason: 'Implement Carbon.minutes to match PHP Carbon.',
      );
    });

    test('Carbon exposes minutesInCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minutesInCentury,
        returnsNormally,
        reason: 'Implement Carbon.minutesInCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes minutesInDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minutesInDay,
        returnsNormally,
        reason: 'Implement Carbon.minutesInDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes minutesInDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minutesInDecade,
        returnsNormally,
        reason: 'Implement Carbon.minutesInDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes minutesInHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minutesInHour,
        returnsNormally,
        reason: 'Implement Carbon.minutesInHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes minutesInMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minutesInMillennium,
        returnsNormally,
        reason: 'Implement Carbon.minutesInMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes minutesInMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minutesInMonth,
        returnsNormally,
        reason: 'Implement Carbon.minutesInMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes minutesInQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minutesInQuarter,
        returnsNormally,
        reason: 'Implement Carbon.minutesInQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes minutesInWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minutesInWeek,
        returnsNormally,
        reason: 'Implement Carbon.minutesInWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes minutesInYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minutesInYear,
        returnsNormally,
        reason: 'Implement Carbon.minutesInYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes minutesUntil', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.minutesUntil,
        returnsNormally,
        reason: 'Implement Carbon.minutesUntil to match PHP Carbon.',
      );
    });

    test('Carbon exposes month', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.month,
        returnsNormally,
        reason: 'Implement Carbon.month to match PHP Carbon.',
      );
    });

    test('Carbon exposes monthOfCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.monthOfCentury,
        returnsNormally,
        reason: 'Implement Carbon.monthOfCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes monthOfDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.monthOfDecade,
        returnsNormally,
        reason: 'Implement Carbon.monthOfDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes monthOfMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.monthOfMillennium,
        returnsNormally,
        reason: 'Implement Carbon.monthOfMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes monthOfQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.monthOfQuarter,
        returnsNormally,
        reason: 'Implement Carbon.monthOfQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes monthOfYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.monthOfYear,
        returnsNormally,
        reason: 'Implement Carbon.monthOfYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes months', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.months,
        returnsNormally,
        reason: 'Implement Carbon.months to match PHP Carbon.',
      );
    });

    test('Carbon exposes monthsInCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.monthsInCentury,
        returnsNormally,
        reason: 'Implement Carbon.monthsInCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes monthsInDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.monthsInDecade,
        returnsNormally,
        reason: 'Implement Carbon.monthsInDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes monthsInMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.monthsInMillennium,
        returnsNormally,
        reason: 'Implement Carbon.monthsInMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes monthsInQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.monthsInQuarter,
        returnsNormally,
        reason: 'Implement Carbon.monthsInQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes monthsInYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.monthsInYear,
        returnsNormally,
        reason: 'Implement Carbon.monthsInYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes monthsUntil', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.monthsUntil,
        returnsNormally,
        reason: 'Implement Carbon.monthsUntil to match PHP Carbon.',
      );
    });

    test('Carbon exposes quarterOfCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.quarterOfCentury,
        returnsNormally,
        reason: 'Implement Carbon.quarterOfCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes quarterOfDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.quarterOfDecade,
        returnsNormally,
        reason: 'Implement Carbon.quarterOfDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes quarterOfMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.quarterOfMillennium,
        returnsNormally,
        reason: 'Implement Carbon.quarterOfMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes quarterOfYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.quarterOfYear,
        returnsNormally,
        reason: 'Implement Carbon.quarterOfYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes quartersInCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.quartersInCentury,
        returnsNormally,
        reason: 'Implement Carbon.quartersInCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes quartersInDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.quartersInDecade,
        returnsNormally,
        reason: 'Implement Carbon.quartersInDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes quartersInMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.quartersInMillennium,
        returnsNormally,
        reason: 'Implement Carbon.quartersInMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes quartersInYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.quartersInYear,
        returnsNormally,
        reason: 'Implement Carbon.quartersInYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes quartersUntil', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.quartersUntil,
        returnsNormally,
        reason: 'Implement Carbon.quartersUntil to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundCenturies', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundCenturies,
        returnsNormally,
        reason: 'Implement Carbon.roundCenturies to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundCentury,
        returnsNormally,
        reason: 'Implement Carbon.roundCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundDay,
        returnsNormally,
        reason: 'Implement Carbon.roundDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundDays', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundDays,
        returnsNormally,
        reason: 'Implement Carbon.roundDays to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundDecade,
        returnsNormally,
        reason: 'Implement Carbon.roundDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundDecades', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundDecades,
        returnsNormally,
        reason: 'Implement Carbon.roundDecades to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundHour,
        returnsNormally,
        reason: 'Implement Carbon.roundHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundHours', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundHours,
        returnsNormally,
        reason: 'Implement Carbon.roundHours to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundMicrosecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundMicrosecond,
        returnsNormally,
        reason: 'Implement Carbon.roundMicrosecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundMicroseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundMicroseconds,
        returnsNormally,
        reason: 'Implement Carbon.roundMicroseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundMillennia', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundMillennia,
        returnsNormally,
        reason: 'Implement Carbon.roundMillennia to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundMillennium,
        returnsNormally,
        reason: 'Implement Carbon.roundMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundMillisecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundMillisecond,
        returnsNormally,
        reason: 'Implement Carbon.roundMillisecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundMilliseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundMilliseconds,
        returnsNormally,
        reason: 'Implement Carbon.roundMilliseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundMinute', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundMinute,
        returnsNormally,
        reason: 'Implement Carbon.roundMinute to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundMinutes', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundMinutes,
        returnsNormally,
        reason: 'Implement Carbon.roundMinutes to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundMonth,
        returnsNormally,
        reason: 'Implement Carbon.roundMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundMonths', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundMonths,
        returnsNormally,
        reason: 'Implement Carbon.roundMonths to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundQuarter,
        returnsNormally,
        reason: 'Implement Carbon.roundQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundQuarters', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundQuarters,
        returnsNormally,
        reason: 'Implement Carbon.roundQuarters to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundSecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundSecond,
        returnsNormally,
        reason: 'Implement Carbon.roundSecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundSeconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundSeconds,
        returnsNormally,
        reason: 'Implement Carbon.roundSeconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundYear,
        returnsNormally,
        reason: 'Implement Carbon.roundYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes roundYears', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.roundYears,
        returnsNormally,
        reason: 'Implement Carbon.roundYears to match PHP Carbon.',
      );
    });

    test('Carbon exposes second', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.second,
        returnsNormally,
        reason: 'Implement Carbon.second to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondOfCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondOfCentury,
        returnsNormally,
        reason: 'Implement Carbon.secondOfCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondOfDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondOfDay,
        returnsNormally,
        reason: 'Implement Carbon.secondOfDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondOfDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondOfDecade,
        returnsNormally,
        reason: 'Implement Carbon.secondOfDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondOfHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondOfHour,
        returnsNormally,
        reason: 'Implement Carbon.secondOfHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondOfMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondOfMillennium,
        returnsNormally,
        reason: 'Implement Carbon.secondOfMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondOfMinute', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondOfMinute,
        returnsNormally,
        reason: 'Implement Carbon.secondOfMinute to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondOfMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondOfMonth,
        returnsNormally,
        reason: 'Implement Carbon.secondOfMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondOfQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondOfQuarter,
        returnsNormally,
        reason: 'Implement Carbon.secondOfQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondOfWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondOfWeek,
        returnsNormally,
        reason: 'Implement Carbon.secondOfWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondOfYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondOfYear,
        returnsNormally,
        reason: 'Implement Carbon.secondOfYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes seconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.seconds,
        returnsNormally,
        reason: 'Implement Carbon.seconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondsInCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondsInCentury,
        returnsNormally,
        reason: 'Implement Carbon.secondsInCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondsInDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondsInDay,
        returnsNormally,
        reason: 'Implement Carbon.secondsInDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondsInDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondsInDecade,
        returnsNormally,
        reason: 'Implement Carbon.secondsInDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondsInHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondsInHour,
        returnsNormally,
        reason: 'Implement Carbon.secondsInHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondsInMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondsInMillennium,
        returnsNormally,
        reason: 'Implement Carbon.secondsInMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondsInMinute', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondsInMinute,
        returnsNormally,
        reason: 'Implement Carbon.secondsInMinute to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondsInMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondsInMonth,
        returnsNormally,
        reason: 'Implement Carbon.secondsInMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondsInQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondsInQuarter,
        returnsNormally,
        reason: 'Implement Carbon.secondsInQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondsInWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondsInWeek,
        returnsNormally,
        reason: 'Implement Carbon.secondsInWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondsInYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondsInYear,
        returnsNormally,
        reason: 'Implement Carbon.secondsInYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes secondsUntil', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.secondsUntil,
        returnsNormally,
        reason: 'Implement Carbon.secondsUntil to match PHP Carbon.',
      );
    });

    test('Carbon exposes setDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setDay,
        returnsNormally,
        reason: 'Implement Carbon.setDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes setDays', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setDays,
        returnsNormally,
        reason: 'Implement Carbon.setDays to match PHP Carbon.',
      );
    });

    test('Carbon exposes setHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setHour,
        returnsNormally,
        reason: 'Implement Carbon.setHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes setHours', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setHours,
        returnsNormally,
        reason: 'Implement Carbon.setHours to match PHP Carbon.',
      );
    });

    test('Carbon exposes setMicro', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setMicro,
        returnsNormally,
        reason: 'Implement Carbon.setMicro to match PHP Carbon.',
      );
    });

    test('Carbon exposes setMicros', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setMicros,
        returnsNormally,
        reason: 'Implement Carbon.setMicros to match PHP Carbon.',
      );
    });

    test('Carbon exposes setMicrosecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setMicrosecond,
        returnsNormally,
        reason: 'Implement Carbon.setMicrosecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes setMicroseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setMicroseconds,
        returnsNormally,
        reason: 'Implement Carbon.setMicroseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes setMilli', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setMilli,
        returnsNormally,
        reason: 'Implement Carbon.setMilli to match PHP Carbon.',
      );
    });

    test('Carbon exposes setMillis', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setMillis,
        returnsNormally,
        reason: 'Implement Carbon.setMillis to match PHP Carbon.',
      );
    });

    test('Carbon exposes setMillisecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setMillisecond,
        returnsNormally,
        reason: 'Implement Carbon.setMillisecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes setMilliseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setMilliseconds,
        returnsNormally,
        reason: 'Implement Carbon.setMilliseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes setMinute', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setMinute,
        returnsNormally,
        reason: 'Implement Carbon.setMinute to match PHP Carbon.',
      );
    });

    test('Carbon exposes setMinutes', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setMinutes,
        returnsNormally,
        reason: 'Implement Carbon.setMinutes to match PHP Carbon.',
      );
    });

    test('Carbon exposes setMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setMonth,
        returnsNormally,
        reason: 'Implement Carbon.setMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes setMonths', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setMonths,
        returnsNormally,
        reason: 'Implement Carbon.setMonths to match PHP Carbon.',
      );
    });

    test('Carbon exposes setSecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setSecond,
        returnsNormally,
        reason: 'Implement Carbon.setSecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes setSeconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setSeconds,
        returnsNormally,
        reason: 'Implement Carbon.setSeconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes setYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setYear,
        returnsNormally,
        reason: 'Implement Carbon.setYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes setYears', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.setYears,
        returnsNormally,
        reason: 'Implement Carbon.setYears to match PHP Carbon.',
      );
    });

    test('Carbon exposes shortAbsoluteDiffForHumans', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.shortAbsoluteDiffForHumans,
        returnsNormally,
        reason:
            'Implement Carbon.shortAbsoluteDiffForHumans to match PHP Carbon.',
      );
    });

    test('Carbon exposes shortRelativeDiffForHumans', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.shortRelativeDiffForHumans,
        returnsNormally,
        reason:
            'Implement Carbon.shortRelativeDiffForHumans to match PHP Carbon.',
      );
    });

    test('Carbon exposes shortRelativeToNowDiffForHumans', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.shortRelativeToNowDiffForHumans,
        returnsNormally,
        reason:
            'Implement Carbon.shortRelativeToNowDiffForHumans to match PHP Carbon.',
      );
    });

    test('Carbon exposes shortRelativeToOtherDiffForHumans', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.shortRelativeToOtherDiffForHumans,
        returnsNormally,
        reason:
            'Implement Carbon.shortRelativeToOtherDiffForHumans to match PHP Carbon.',
      );
    });

    test('Carbon exposes subCenturies', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subCenturies,
        returnsNormally,
        reason: 'Implement Carbon.subCenturies to match PHP Carbon.',
      );
    });

    test('Carbon exposes subCenturiesNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subCenturiesNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subCenturiesNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subCenturiesWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subCenturiesWithNoOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.subCenturiesWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subCenturiesWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subCenturiesWithOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.subCenturiesWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subCenturiesWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subCenturiesWithoutOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.subCenturiesWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subCentury,
        returnsNormally,
        reason: 'Implement Carbon.subCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes subCenturyNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subCenturyNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subCenturyNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subCenturyWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subCenturyWithNoOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.subCenturyWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subCenturyWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subCenturyWithOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subCenturyWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subCenturyWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subCenturyWithoutOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.subCenturyWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subDay,
        returnsNormally,
        reason: 'Implement Carbon.subDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes subDays', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subDays,
        returnsNormally,
        reason: 'Implement Carbon.subDays to match PHP Carbon.',
      );
    });

    test('Carbon exposes subDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subDecade,
        returnsNormally,
        reason: 'Implement Carbon.subDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes subDecadeNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subDecadeNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subDecadeNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subDecadeWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subDecadeWithNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subDecadeWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subDecadeWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subDecadeWithOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subDecadeWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subDecadeWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subDecadeWithoutOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.subDecadeWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subDecades', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subDecades,
        returnsNormally,
        reason: 'Implement Carbon.subDecades to match PHP Carbon.',
      );
    });

    test('Carbon exposes subDecadesNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subDecadesNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subDecadesNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subDecadesWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subDecadesWithNoOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.subDecadesWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subDecadesWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subDecadesWithOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subDecadesWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subDecadesWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subDecadesWithoutOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.subDecadesWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subHour,
        returnsNormally,
        reason: 'Implement Carbon.subHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes subHours', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subHours,
        returnsNormally,
        reason: 'Implement Carbon.subHours to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMicro', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMicro,
        returnsNormally,
        reason: 'Implement Carbon.subMicro to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMicros', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMicros,
        returnsNormally,
        reason: 'Implement Carbon.subMicros to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMicrosecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMicrosecond,
        returnsNormally,
        reason: 'Implement Carbon.subMicrosecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMicroseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMicroseconds,
        returnsNormally,
        reason: 'Implement Carbon.subMicroseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMillennia', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMillennia,
        returnsNormally,
        reason: 'Implement Carbon.subMillennia to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMillenniaNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMillenniaNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subMillenniaNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMillenniaWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMillenniaWithNoOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.subMillenniaWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMillenniaWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMillenniaWithOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.subMillenniaWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMillenniaWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMillenniaWithoutOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.subMillenniaWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMillennium,
        returnsNormally,
        reason: 'Implement Carbon.subMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMillenniumNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMillenniumNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subMillenniumNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMillenniumWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMillenniumWithNoOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.subMillenniumWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMillenniumWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMillenniumWithOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.subMillenniumWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMillenniumWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMillenniumWithoutOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.subMillenniumWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMilli', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMilli,
        returnsNormally,
        reason: 'Implement Carbon.subMilli to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMillis', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMillis,
        returnsNormally,
        reason: 'Implement Carbon.subMillis to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMillisecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMillisecond,
        returnsNormally,
        reason: 'Implement Carbon.subMillisecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMilliseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMilliseconds,
        returnsNormally,
        reason: 'Implement Carbon.subMilliseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMinute', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMinute,
        returnsNormally,
        reason: 'Implement Carbon.subMinute to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMinutes', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMinutes,
        returnsNormally,
        reason: 'Implement Carbon.subMinutes to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMonth,
        returnsNormally,
        reason: 'Implement Carbon.subMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMonthNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMonthNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subMonthNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMonthWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMonthWithNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subMonthWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMonthWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMonthWithOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subMonthWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMonthWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMonthWithoutOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subMonthWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMonths', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMonths,
        returnsNormally,
        reason: 'Implement Carbon.subMonths to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMonthsNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMonthsNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subMonthsNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMonthsWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMonthsWithNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subMonthsWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMonthsWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMonthsWithOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subMonthsWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subMonthsWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subMonthsWithoutOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.subMonthsWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subQuarter,
        returnsNormally,
        reason: 'Implement Carbon.subQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes subQuarterNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subQuarterNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subQuarterNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subQuarterWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subQuarterWithNoOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.subQuarterWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subQuarterWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subQuarterWithOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subQuarterWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subQuarterWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subQuarterWithoutOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.subQuarterWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subQuarters', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subQuarters,
        returnsNormally,
        reason: 'Implement Carbon.subQuarters to match PHP Carbon.',
      );
    });

    test('Carbon exposes subQuartersNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subQuartersNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subQuartersNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subQuartersWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subQuartersWithNoOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.subQuartersWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subQuartersWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subQuartersWithOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subQuartersWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subQuartersWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subQuartersWithoutOverflow,
        returnsNormally,
        reason:
            'Implement Carbon.subQuartersWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subSecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subSecond,
        returnsNormally,
        reason: 'Implement Carbon.subSecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes subSeconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subSeconds,
        returnsNormally,
        reason: 'Implement Carbon.subSeconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCCenturies', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCCenturies,
        returnsNormally,
        reason: 'Implement Carbon.subUTCCenturies to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCCentury,
        returnsNormally,
        reason: 'Implement Carbon.subUTCCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCDay', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCDay,
        returnsNormally,
        reason: 'Implement Carbon.subUTCDay to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCDays', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCDays,
        returnsNormally,
        reason: 'Implement Carbon.subUTCDays to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCDecade,
        returnsNormally,
        reason: 'Implement Carbon.subUTCDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCDecades', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCDecades,
        returnsNormally,
        reason: 'Implement Carbon.subUTCDecades to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCHour', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCHour,
        returnsNormally,
        reason: 'Implement Carbon.subUTCHour to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCHours', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCHours,
        returnsNormally,
        reason: 'Implement Carbon.subUTCHours to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCMicro', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCMicro,
        returnsNormally,
        reason: 'Implement Carbon.subUTCMicro to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCMicros', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCMicros,
        returnsNormally,
        reason: 'Implement Carbon.subUTCMicros to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCMicrosecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCMicrosecond,
        returnsNormally,
        reason: 'Implement Carbon.subUTCMicrosecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCMicroseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCMicroseconds,
        returnsNormally,
        reason: 'Implement Carbon.subUTCMicroseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCMillennia', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCMillennia,
        returnsNormally,
        reason: 'Implement Carbon.subUTCMillennia to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCMillennium,
        returnsNormally,
        reason: 'Implement Carbon.subUTCMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCMilli', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCMilli,
        returnsNormally,
        reason: 'Implement Carbon.subUTCMilli to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCMillis', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCMillis,
        returnsNormally,
        reason: 'Implement Carbon.subUTCMillis to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCMillisecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCMillisecond,
        returnsNormally,
        reason: 'Implement Carbon.subUTCMillisecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCMilliseconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCMilliseconds,
        returnsNormally,
        reason: 'Implement Carbon.subUTCMilliseconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCMinute', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCMinute,
        returnsNormally,
        reason: 'Implement Carbon.subUTCMinute to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCMinutes', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCMinutes,
        returnsNormally,
        reason: 'Implement Carbon.subUTCMinutes to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCMonth,
        returnsNormally,
        reason: 'Implement Carbon.subUTCMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCMonths', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCMonths,
        returnsNormally,
        reason: 'Implement Carbon.subUTCMonths to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCQuarter,
        returnsNormally,
        reason: 'Implement Carbon.subUTCQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCQuarters', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCQuarters,
        returnsNormally,
        reason: 'Implement Carbon.subUTCQuarters to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCSecond', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCSecond,
        returnsNormally,
        reason: 'Implement Carbon.subUTCSecond to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCSeconds', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCSeconds,
        returnsNormally,
        reason: 'Implement Carbon.subUTCSeconds to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCWeek,
        returnsNormally,
        reason: 'Implement Carbon.subUTCWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCWeeks', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCWeeks,
        returnsNormally,
        reason: 'Implement Carbon.subUTCWeeks to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCYear,
        returnsNormally,
        reason: 'Implement Carbon.subUTCYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes subUTCYears', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subUTCYears,
        returnsNormally,
        reason: 'Implement Carbon.subUTCYears to match PHP Carbon.',
      );
    });

    test('Carbon exposes subWeek', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subWeek,
        returnsNormally,
        reason: 'Implement Carbon.subWeek to match PHP Carbon.',
      );
    });

    test('Carbon exposes subWeekday', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subWeekday,
        returnsNormally,
        reason: 'Implement Carbon.subWeekday to match PHP Carbon.',
      );
    });

    test('Carbon exposes subWeekdays', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subWeekdays,
        returnsNormally,
        reason: 'Implement Carbon.subWeekdays to match PHP Carbon.',
      );
    });

    test('Carbon exposes subWeeks', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subWeeks,
        returnsNormally,
        reason: 'Implement Carbon.subWeeks to match PHP Carbon.',
      );
    });

    test('Carbon exposes subYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subYear,
        returnsNormally,
        reason: 'Implement Carbon.subYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes subYearNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subYearNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subYearNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subYearWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subYearWithNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subYearWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subYearWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subYearWithOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subYearWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subYearWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subYearWithoutOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subYearWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subYears', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subYears,
        returnsNormally,
        reason: 'Implement Carbon.subYears to match PHP Carbon.',
      );
    });

    test('Carbon exposes subYearsNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subYearsNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subYearsNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subYearsWithNoOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subYearsWithNoOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subYearsWithNoOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subYearsWithOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subYearsWithOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subYearsWithOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes subYearsWithoutOverflow', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.subYearsWithoutOverflow,
        returnsNormally,
        reason: 'Implement Carbon.subYearsWithoutOverflow to match PHP Carbon.',
      );
    });

    test('Carbon exposes weekOfCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.weekOfCentury,
        returnsNormally,
        reason: 'Implement Carbon.weekOfCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes weekOfDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.weekOfDecade,
        returnsNormally,
        reason: 'Implement Carbon.weekOfDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes weekOfMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.weekOfMillennium,
        returnsNormally,
        reason: 'Implement Carbon.weekOfMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes weekOfMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.weekOfMonth,
        returnsNormally,
        reason: 'Implement Carbon.weekOfMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes weekOfQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.weekOfQuarter,
        returnsNormally,
        reason: 'Implement Carbon.weekOfQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes weekOfYear', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.weekOfYear,
        returnsNormally,
        reason: 'Implement Carbon.weekOfYear to match PHP Carbon.',
      );
    });

    test('Carbon exposes weeksInCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.weeksInCentury,
        returnsNormally,
        reason: 'Implement Carbon.weeksInCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes weeksInDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.weeksInDecade,
        returnsNormally,
        reason: 'Implement Carbon.weeksInDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes weeksInMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.weeksInMillennium,
        returnsNormally,
        reason: 'Implement Carbon.weeksInMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes weeksInMonth', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.weeksInMonth,
        returnsNormally,
        reason: 'Implement Carbon.weeksInMonth to match PHP Carbon.',
      );
    });

    test('Carbon exposes weeksInQuarter', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.weeksInQuarter,
        returnsNormally,
        reason: 'Implement Carbon.weeksInQuarter to match PHP Carbon.',
      );
    });

    test('Carbon exposes weeksUntil', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.weeksUntil,
        returnsNormally,
        reason: 'Implement Carbon.weeksUntil to match PHP Carbon.',
      );
    });

    test('Carbon exposes year', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.year,
        returnsNormally,
        reason: 'Implement Carbon.year to match PHP Carbon.',
      );
    });

    test('Carbon exposes yearOfCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.yearOfCentury,
        returnsNormally,
        reason: 'Implement Carbon.yearOfCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes yearOfDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.yearOfDecade,
        returnsNormally,
        reason: 'Implement Carbon.yearOfDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes yearOfMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.yearOfMillennium,
        returnsNormally,
        reason: 'Implement Carbon.yearOfMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes years', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.years,
        returnsNormally,
        reason: 'Implement Carbon.years to match PHP Carbon.',
      );
    });

    test('Carbon exposes yearsInCentury', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.yearsInCentury,
        returnsNormally,
        reason: 'Implement Carbon.yearsInCentury to match PHP Carbon.',
      );
    });

    test('Carbon exposes yearsInDecade', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.yearsInDecade,
        returnsNormally,
        reason: 'Implement Carbon.yearsInDecade to match PHP Carbon.',
      );
    });

    test('Carbon exposes yearsInMillennium', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.yearsInMillennium,
        returnsNormally,
        reason: 'Implement Carbon.yearsInMillennium to match PHP Carbon.',
      );
    });

    test('Carbon exposes yearsUntil', () {
      final CarbonInterface carbon = Carbon.now();
      expect(
        () => carbon.yearsUntil,
        returnsNormally,
        reason: 'Implement Carbon.yearsUntil to match PHP Carbon.',
      );
    });
  });
}
