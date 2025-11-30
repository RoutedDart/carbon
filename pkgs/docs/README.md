# Carbon Documentation Examples

This package contains runnable code examples for the [Carbon](https://pub.dev/packages/carbon) date/time library documentation.

## Purpose

The examples in this package serve multiple purposes:

1. **Documentation Generation** - Code snippets used in the Carbon documentation
2. **Testing Examples** - Ensures examples stay up-to-date and working
3. **Learning Resource** - Demonstrates real-world usage patterns

## Structure

```
lib/examples/
├── addition_examples.dart           # Date/time addition and subtraction
├── carbon_interval_examples.dart    # Working with intervals
├── carbon_period_examples.dart      # Date ranges and periods
├── carbon_timezone_examples.dart    # Timezone handling
├── comparison_examples.dart         # Date comparisons
├── conversion_examples.dart         # Type conversions
├── diff_for_humans_examples.dart    # Human-readable differences
├── difference_examples.dart         # Date differences
├── fluent_setters_examples.dart     # Fluent API setters
├── getters_examples.dart            # Property getters
├── instantiation_examples.dart      # Creating Carbon instances
├── intro_example.dart               # Getting started example
├── json_examples.dart               # JSON serialization
├── localization_examples.dart       # Locale support
├── macro_examples.dart              # Custom macros
├── modifiers_examples.dart          # Date modifiers
├── serialization_examples.dart      # Serialization
├── setters_examples.dart            # Property setters
├── string_formatting_examples.dart  # Formatting dates
├── testing_aids_examples.dart       # Testing helpers
└── weeks_examples.dart              # Week calculations
```

## Running Examples

Each example file contains runnable functions that return `ExampleRun` objects with:
- **code**: The source code shown in documentation
- **output**: The expected output when the code runs

```dart
import 'package:carbonized/carbonized.dart';
import 'package:docs/examples/localization_examples.dart';

void main() async {
  final example = await runLocaleFormattingExample();
  print(example.code);   // Source code
  print(example.output); // Expected output
}
```

## Key Features Demonstrated

### 🌐 Automatic Locale Initialization
All examples demonstrate Carbon's automatic locale initialization - no need to call `initializeDateFormatting()` manually!

```dart
void main() {
  // Just works! No initialization needed
  final date = Carbon.parse('2024-12-25').locale('fr');
  print(date.isoFormat('LLLL')); // "25 décembre 2024"
}
```

### 🌍 Timezone Support
Only needed when using IANA timezone names (like 'America/New_York'):

```dart
Future<void> main() async {
  // Only required for named timezones
  await Carbon.configureTimeMachine();
  
  final tokyo = Carbon.parse('2024-01-15', timeZone: 'Asia/Tokyo');
}
```

**Note:** UTC dates, fixed offsets ('+05:30'), and date math work without initialization!

## Contributing

When adding new examples:

1. ✅ Keep examples simple and focused
2. ✅ Include expected output in `ExampleRun`
3. ✅ Follow the existing naming convention
4. ✅ Ensure examples pass `dart analyze`
5. ✅ Document any non-obvious behavior

## Testing Examples

Run all examples to verify they work:

```bash
dart analyze lib/examples/
```

## Related

- [Carbon Package](../carbon/) - Main Carbon library
- [Carbon Documentation](../carbon/docs/) - Full documentation
- [Carbon on pub.dev](https://pub.dev/packages/carbon)
