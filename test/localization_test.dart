import 'package:carbon/carbon.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:test/test.dart';

void main() {
  setUpAll(() async {
    await initializeDateFormatting('en');
    await initializeDateFormatting('fr');
  });

  test('setLocale updates default locale for new instances', () {
    Carbon.setLocale('fr');
    final now = Carbon.now();
    expect(now.localeCode, 'fr');
    Carbon.setLocale('en');
  });

  test('locale() chains per-instance localization', () {
    final date = Carbon.parse('2020-06-01T12:00:00Z');
    final french = date.locale('fr_FR');
    expect(french.localeCode, 'fr_FR');
    expect(french.toFormattedDateString(), contains('juin'));
    final english = french.locale('en');
    expect(english.localeCode, 'en');
  });
}
