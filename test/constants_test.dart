import 'package:carbon/carbon.dart';
import 'package:test/test.dart';

void main() {
  test('weekday constants match DateTime', () {
    expect(Carbon.SUNDAY, DateTime.sunday);
    expect(Carbon.MONDAY, DateTime.monday);
  });

  test('numeric helpers exist', () {
    expect(Carbon.YEARS_PER_DECADE, 10);
    expect(Carbon.MONTHS_PER_YEAR, 12);
  });
}
