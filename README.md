<div align="center">

# Carbon for Dart 🕐

[![Pub Version](https://img.shields.io/pub/v/carbonized?logo=dart&logoColor=white)](https://pub.dev/packages/carbon)
[![Dart SDK Version](https://badgen.net/pub/sdk-version/carbon)](https://pub.dev/packages/carbonized)
[![License](https://img.shields.io/github/license/RoutedDart/carbonized)](https://github.com/RoutedDart/carbon/blob/master/LICENSE)
[![Build Status](https://img.shields.io/github/actions/workflow/status/RoutedDart/carbonized/dart.yml?branch=master)](https://github.com/RoutedDart/carbon/actions)
[![Coverage](https://img.shields.io/badge/coverage-check%20workflow-blue)](https://github.com/RoutedDart/carbonized/actions)

**A fluent date and time library for Dart** - inspired by the popular PHP [Carbon](https://carbon.nesbot.com/) library.

[Features](#-features) • [Installation](#-installation) • [Quick Start](#-quick-start) • [Documentation](#-usage-examples) • [Contributing](#-contributing)

</div>

---

## ✨ Features

Carbonized makes working with dates and times in Dart/Flutter intuitive and enjoyable:

- 🔗 **Fluent API** - Chain methods like `Carbon.now().addWeeks(2).startOfMonth()`
- 🌍 **Timezone Support** - Full IANA timezone database support via `time_machine`
- 🌐 **Auto-initialized Localization** - Format dates in 170+ locales with zero setup required
- 📅 **Smart Date Math** - Calendar operations with overflow handling and DST awareness
- 🔄 **Mutable & Immutable** - Choose between `Carbon` and `CarbonImmutable` based on your needs
- ⏱️ **Intervals & Periods** - Work with date ranges and recurring intervals
- 🧪 **Testing Helpers** - Freeze time with `setTestNow()` for deterministic tests
- 🔌 **DateTime Interop** - Convert to/from native DateTime when needed
- 🎯 **PHP Carbon Parity** - Validated against the original PHP implementation

## 📦 Installation

Add Carbonized to your `pubspec.yaml`:

```yaml
dependencies:
  carbonized: ^0.1.0
```

Then run:

```bash
dart pub get
# or
flutter pub get
```

## 🚀 Quick Start

```dart
import 'package:carbonized/carbonized.dart';

void main() {
  // Get current time
  final now = Carbon.now();
  print(now.toIso8601String());
  
  // Fluent date manipulation
  final nextWeek = Carbon.now().addWeeks(1).startOfDay();
  print('Next week starts: ${nextWeek.format('yyyy-MM-dd')}');
  
  // Human-readable differences
  final birthday = Carbon.parse('1990-05-15');
  print(birthday.diffForHumans()); // "34 years ago"
  
  // Comparisons
  if (now.isWeekend()) {
    print('Enjoy your weekend! 🎉');
  }
}

## 📖 Usage Examples

### Creating Carbon Instances

```dart
// Current time
final now = Carbon.now();
final today = Carbon.today();
final tomorrow = Carbon.tomorrow();

// Parsing dates
final parsed = Carbon.parse('2024-12-25');
final fromFormat = Carbon.createFromFormat('d/m/Y', '25/12/2024');
final fromTimestamp = Carbon.createFromTimestampSeconds(1735084800);

// Specific date/time
final custom = Carbon.create(2024, 12, 25, 10, 30, 0);
final fromDateTime = Carbon(DateTime(2024, 12, 25));
```

### Date Manipulation

```dart
final date = Carbon.parse('2024-01-15');

// Add/subtract time
date.addDays(5);          // 2024-01-20
date.subWeeks(2);         // 2024-01-01
date.addMonths(3);        // 2024-04-15
date.addYears(1);         // 2025-01-15

// Start/end of period
date.startOfDay();        // 2024-01-15 00:00:00
date.endOfWeek();         // 2024-01-21 23:59:59
date.startOfMonth();      // 2024-01-01 00:00:00
date.endOfYear();         // 2024-12-31 23:59:59

// Next/previous
date.nextWeekday();
date.previousSunday();
date.nextMonday();
```

### Comparisons

```dart
final first = Carbon.parse('2024-01-15');
final second = Carbon.parse('2024-02-20');

// Comparison methods
first.isBefore(second);        // true
first.isAfter(second);         // false
first.equalTo(second);         // false
first.between(start, end);     // Check if between two dates

// Boolean checks
first.isWeekday();            // true
first.isWeekend();            // false
first.isToday();              // false
first.isPast();               // true
first.isFuture();             // false
first.isLeapYear();           // true (2024 is leap)
first.isMonday();             // true

// Date units
first.isSameDay(second);
first.isSameMonth(second);
first.isSameYear(second);
```

### Human-Readable Differences

```dart
final past = Carbon.parse('2023-01-15');
final future = Carbon.parse('2025-12-31');

print(past.diffForHumans());           // "1 year ago"
print(future.diffForHumans());         // "1 year from now"
print(past.diffForHumans(future));     // "2 years before"

// Absolute differences
final diff = past.diffInDays(future);   // 715
final hours = past.diffInHours(future); // 17160
final minutes = past.diffInMinutes();   // Minutes from now
```

### Localization

Carbon automatically handles locale initialization - no need to manually call `initializeDateFormatting()`!

```dart
void main() {
  // Works out of the box - no initialization needed!
  final date = Carbon.parse('2024-12-25').locale('fr_FR');
  
  print(date.translatedFormat('l j F Y'));  // "mercredi 25 décembre 2024"
  print(date.isoFormat('MMMM'));            // "décembre"
  print(date.diffForHumans());              // "il y a 1 an"
  
  // Change locale on the fly
  date.locale('es_ES');
  print(date.translatedFormat('l j F Y'));  // "miércoles 25 diciembre 2024"
  
  // Supports 170+ locales out of the box
  date.locale('ja');
  print(date.isoFormat('LLLL'));            // "2024年12月25日"
}
```

### Timezone Support

```dart
Future<void> main() async {
  // Initialize timezone database (ONLY needed for IANA timezone names like 'Asia/Tokyo')
  await Carbon.configureTimeMachine();
  
  // Named timezone - requires initialization above
  final tokyo = Carbon.parse('2024-01-15 12:00', timeZone: 'Asia/Tokyo');
  final ny = Carbon.parse('2024-01-15 12:00', timeZone: 'America/New_York');
  
  // Convert between timezones
  final tokyoTime = ny.tz('Asia/Tokyo');
  print(tokyoTime.format('yyyy-MM-dd HH:mm'));
  
  // UTC and fixed offsets work without initialization
  final utc = Carbon.parse('2024-01-15T12:00:00Z');     // No init needed
  final offset = Carbon.now(timeZone: '+05:30');          // No init needed
  
  // Get timezone info
  print(tokyo.timeZoneName);        // "JST"
  print(tokyo.offsetHours);         // 9
  print(tokyo.isDST());             // false
}
```

### Mutable vs Immutable

```dart
// Mutable (modifies original instance)
final mutable = Carbon.parse('2024-01-15');
final modified = mutable.addDays(1);
print(identical(mutable, modified)); // true
print(mutable.day);                  // 16

// Immutable (creates new instance)
final immutable = CarbonImmutable.parse('2024-01-15');
final newInstance = immutable.addDays(1);
print(identical(immutable, newInstance)); // false
print(immutable.day);                     // 15
print(newInstance.day);                   // 16

// Convert between types
final toImmutable = mutable.toImmutable();
final toMutable = immutable.toMutable();
```

### Testing Helpers

```dart
import 'package:carbonized/carbonized.dart';

void testSomething() {
  // Freeze time for testing
  Carbon.setTestNow('2024-01-15 10:00:00');
  
  final now = Carbon.now();
  print(now.toIso8601String()); // Always "2024-01-15T10:00:00.000Z"
  
  // Travel in time
  Carbon.setTestNow(Carbon.parse('2025-06-01'));
  
  // Reset to real time
  Carbon.setTestNow();
}
```

### Formatting

```dart
final date = Carbon.parse('2024-12-25 15:30:45');

// Standard formatting
print(date.format('yyyy-MM-dd'));              // "2024-12-25"
print(date.format('EEE, MMM d, yyyy'));        // "Wed, Dec 25, 2024"
print(date.format('HH:mm:ss'));                // "15:30:45"

// ISO formats
print(date.toIso8601String());                 // "2024-12-25T15:30:45.000"
print(date.toIso8601String(keepOffset: true)); // With timezone

// Locale-aware formatting
print(date.isoFormat('LLLL'));                 // "December 25, 2024"
print(date.translatedFormat('l j F Y'));       // Localized
```

### Working with Intervals & Periods

```dart
// Create intervals
final interval = CarbonInterval.days(5).hours(3);
print(interval.totalHours); // 123

// Date periods (ranges)
final start = Carbon.parse('2024-01-01');
final end = Carbon.parse('2024-01-10');
final period = CarbonPeriod(start, end);

for (final date in period) {
  print(date.toIso8601String());
}

// Recurring intervals
final weekly = CarbonPeriod.create(
  start,
  CarbonInterval.weeks(1),
  end,
);
```

### Macros (Custom Methods)

```dart
// Register custom methods
Carbon.macro('addWorkDays', (CarbonInterface self, int days) {
  var result = self as Carbon;
  for (var i = 0; i < days; i++) {
    result = result.addDay();
    if (result.isWeekend()) {
      result = result.nextWeekday();
    }
  }
  return result;
});

// Use custom method
final date = Carbon.parse('2024-01-15');
final workDate = date.call('addWorkDays', [5]);
```

## 🧪 Testing

```bash
# Run all tests
dart test

# Run with coverage
dart test --coverage

# Run specific test file
dart test test/carbon_test.dart
```

## 🐳 PHP Reference Sandbox

This repo includes a Docker setup to verify behavior against the original PHP Carbon implementation:

```bash
# Install PHP dependencies
docker compose run --rm phpapp composer install

# Run PHP demo script
docker compose run --rm phpapp composer start

# Interactive shell for experiments
docker compose run --rm phpapp bash
```

The workspace is mounted at `/workspace` so you can edit and test immediately.

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

### Guidelines

- Include tests for new features
- Update documentation for API changes
- Maintain PHP Carbon parity when applicable
- Include reproduction steps in bug reports
- Reference PHP behavior in contributions

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Inspired by [Carbon for PHP](https://carbon.nesbot.com/) by Brian Nesbitt
- Built with [time_machine](https://pub.dev/packages/time_machine) for timezone support
- Localization via [intl](https://pub.dev/packages/intl)

## 🔗 Links

- [Package on pub.dev](https://pub.dev/packages/carbon)
- [Source code on GitHub](https://github.com/RoutedDart/carbon)
- [Issue tracker](https://github.com/RoutedDart/carbon/issues)
- [Original PHP Carbon](https://carbon.nesbot.com/)

## ⭐ Show Your Support

If you find Carbon helpful, please consider giving it a ⭐ on [GitHub](https://github.com/RoutedDart/carbon)!

---

<div align="center">
Made with ❤️ by the Carbon Dart community
</div>
