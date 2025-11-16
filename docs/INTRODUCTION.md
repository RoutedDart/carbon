# Carbon for Dart: Introduction

This guide mirrors the "Introduction" section from the official PHP Carbon
website and explains the equivalent concepts in the Dart implementation.

## Carbon builds on DateTime

PHP Carbon subclasses `DateTime`. Dart `DateTime` is not designed for
inheritance, so Carbon composes the platform `DateTime` instead. Every
`CarbonInterface` exposes the same getters and helpers, and you can always call
`toDateTime()` or `toDateTimeView()` when you need a `DateTime` instance.

```dart
import 'package:carbon/carbon.dart';

final event = Carbon.parse('2025-01-10T00:00:00Z');
final view = event.toDateTimeView();
print(view.weekday); // 6 (Friday)
```

`CarbonDateTimeView` implements the entire `DateTime` API, so you can pass it to
APIs that expect a `DateTime` without cloning the value.

## Importing Carbon

Dart does not use namespaces like PHP. Import the package once at the top of the
file:

```dart
import 'package:carbon/carbon.dart';
```

Every example in this documentation assumes the import above.

## Mutable vs. immutable instances

Dart Carbon follows the same semantics as PHP Carbon: `Carbon` is mutable,
`CarbonImmutable` returns a new instance for every modifier. The snippet below
mirrors the PHP example from the docs site.

```dart
import 'package:carbon/carbon.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  await initializeDateFormatting('en');

  final mutable = Carbon.parse('2025-01-10T00:00:00Z');
  final immutable = CarbonImmutable.parse('2025-01-10T00:00:00Z');

  final modifiedMutable = mutable.addDays(1);
  final modifiedImmutable =
      CarbonImmutable.parse('2025-01-10T00:00:00Z').addDays(1);

  print('mutable === modifiedMutable: '
      '${identical(mutable, modifiedMutable)}');
  print('mutable isoFormat: ${mutable.isoFormat('dddd D')}');
  print('modifiedMutable isoFormat: ${modifiedMutable.isoFormat('dddd D')}');

  print('immutable === modifiedImmutable: '
      '${identical(immutable, modifiedImmutable)}');
  print('immutable isoFormat: ${immutable.isoFormat('dddd D')}');
  print('modifiedImmutable isoFormat: ${modifiedImmutable.isoFormat('dddd D')}');

  final mutableFromImmutable = CarbonImmutable.now().toMutable();
  print('mutableFromImmutable isMutable: ${mutableFromImmutable.isMutable}');
  print('mutableFromImmutable isImmutable: '
      '${!mutableFromImmutable.isMutable}');

  final immutableFromMutable = Carbon.now().toImmutable();
  print('immutableFromMutable isMutable: '
      '${immutableFromMutable.isMutable}');
  print('immutableFromMutable isImmutable: '
      '${!immutableFromMutable.isMutable}');
}
```

You can run the exact script above via `dart run tool/examples/intro_example.dart`.
The current output is:

```
mutable === modifiedMutable: true
mutable isoFormat: Saturday 11
modifiedMutable isoFormat: Saturday 11
immutable === modifiedImmutable: false
immutable isoFormat: Friday 10
modifiedImmutable isoFormat: Saturday 11
mutableFromImmutable isMutable: true
mutableFromImmutable isImmutable: false
immutableFromMutable isMutable: false
immutableFromMutable isImmutable: true
```

This demonstrates that calling `addDays` mutates the same `Carbon` instance but
creates a new `CarbonImmutable`.

## Related Carbon types

Dart exposes the same surface area as PHP Carbon through dedicated classes:

- `CarbonInterface` – contract implemented by `Carbon` and `CarbonImmutable`.
- `CarbonLastErrors` – mirrors PHP `DateTime::getLastErrors()`.
- `CarbonPeriod`, `CarbonInterval`, and timezone helpers.
- Macro support (`Carbon.registerMacro`) for extending the API in the same way
  PHP Carbon allows.

Use mutable vs. immutable APIs as needed and rely on `toMutable()` /
`toImmutable()` to switch representations.

## Next steps

Upcoming sections will cover constructors, parsing helpers, relative modifiers,
and serialization so the entire PHP documentation set is mirrored for Dart.
