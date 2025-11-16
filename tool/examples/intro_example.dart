import 'package:carbon/carbon.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  await initializeDateFormatting('en');

  final mutable = Carbon.parse('2025-01-10T00:00:00Z');
  final immutable = CarbonImmutable.parse('2025-01-10T00:00:00Z');

  final modifiedMutable = mutable.addDays(1);
  final modifiedImmutable = CarbonImmutable.parse('2025-01-10T00:00:00Z').addDays(1);

  print('mutable === modifiedMutable: ${identical(mutable, modifiedMutable)}');
  print('mutable isoFormat: ${mutable.isoFormat('dddd D')}');
  print('modifiedMutable isoFormat: ${modifiedMutable.isoFormat('dddd D')}');

  print('immutable === modifiedImmutable: '
      '${identical(immutable, modifiedImmutable)}');
  print('immutable isoFormat: ${immutable.isoFormat('dddd D')}');
  print('modifiedImmutable isoFormat: ${modifiedImmutable.isoFormat('dddd D')}');

  final mutableFromImmutable = CarbonImmutable.now().toMutable();
  print('mutableFromImmutable isMutable: ${mutableFromImmutable.isMutable}');
  print(
    'mutableFromImmutable isImmutable: ${!mutableFromImmutable.isMutable}',
  );

  final immutableFromMutable = Carbon.now().toImmutable();
  print('immutableFromMutable isMutable: ${immutableFromMutable.isMutable}');
  print('immutableFromMutable isImmutable: '
      '${!immutableFromMutable.isMutable}');

  final view = mutable.toDateTimeView();
  print('DateTime view weekday: ${view.weekday}');
}
