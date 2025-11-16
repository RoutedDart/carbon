import 'package:carbon/carbon.dart';
import 'package:test/test.dart';

void main() {
  setUpAll(() async {
    await Carbon.configureTimeMachine(testing: true);
  });

  test('recurrences limits period output', () {
    final start = Carbon.parse('2024-12-01T00:00:00Z');
    final full = start.daysUntil('2024-12-10T00:00:00Z');
    final limited = full.recurrences(3);

    expect(limited.length, 3);
    expect(limited.maxRecurrences, 3);
    expect(limited.first, start);
    expect(limited.last.toIso8601String(), '2024-12-03T00:00:00.000Z');
  });

  test('filter retains recurrence limit and picks weekdays', () {
    final start = Carbon.parse('2024-12-23T00:00:00Z');
    final period = start.daysUntil('2025-01-05T00:00:00Z');
    final weekdays = period.filter((date) => !date.isWeekend()).recurrences(5);

    expect(weekdays.length, 5);
    expect(weekdays.maxRecurrences, 5);
    for (final date in weekdays) {
      expect(date.isWeekend(), isFalse);
    }
  });
}
