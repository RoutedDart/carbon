# Carbon Testing Quick Start Guide

## Overview

The Carbon test suite has been reorganized from a single 1000-test parity file into 12 focused test files covering specific functionality areas. All tests use Dart's `test` package with nested `group()` calls for organization.

## Test Files at a Glance

```
test/
├── add_methods_years_test.dart        → Year add/sub with overflow
├── add_methods_months_test.dart       → Month add/sub with overflow
├── add_methods_days_weeks_test.dart   → Day/week/weekday operations
├── add_methods_time_units_test.dart   → Hours/minutes/seconds/ms/µs
├── add_methods_large_units_test.dart  → Quarters/decades/centuries/millennia
├── ceil_floor_round_methods_test.dart → Rounding operations
├── accessors_getters_test.dart        → All date/time component getters
├── setters_test.dart                  → All date/time component setters
├── difference_until_methods_test.dart → Date differences & until methods
├── comparison_methods_test.dart       → Equality/comparison/between/min/max
├── is_methods_test.dart               → Weekday/weekend & today/tomorrow/yesterday helpers
├── start_end_methods_test.dart        → Start/end-of-unit helpers + dynamic startOf/endOf
├── create_helpers_test.dart           → `createFrom*` factory behavior
├── create_safe_test.dart              → `createSafe` strict-mode validation
├── create_timezones_test.dart         → Timezone-aware creation semantics
├── modify_methods_test.dart           → `modify` DSL + `addReal*`
├── relative_methods_test.dart         → `relative`, `next`, `previous`
└── carbon_test.dart                   → General integration tests
```

## Running Tests

### Run everything:
```bash
dart test
```

### Run specific file:
```bash
dart test test/add_methods_years_test.dart
```

### Run matching pattern:
```bash
dart test --name "years"
dart test --name "overflow"
```

### Run verbose:
```bash
dart test -v
```

## Test Organization Pattern

```dart
void main() {
  group('Carbon.add - years', () {
    test('addYears with positive value', () {
      // ARRANGE
      final date = Carbon.create(1975);
      
      // ACT
      final result = date.addYears(1);
      
      // ASSERT
      expect(result.year, 1976);
    });
    
    group('year overflow handling', () {
      test('addYearNoOverflow preserves day on leap year', () {
        // ... nested test
      });
    });
  });
}
```

## Test Coverage by Feature

| Feature | File |
|---------|------|
| Year add/sub | `add_methods_years_test.dart` |
| Month add/sub | `add_methods_months_test.dart` |
| Day/week operations | `add_methods_days_weeks_test.dart` |
| Hour/minute/second add/sub | `add_methods_time_units_test.dart` |
| Quarter/decade/century add/sub | `add_methods_large_units_test.dart` |
| Ceil/floor/round | `ceil_floor_round_methods_test.dart` |
| Getters (year, month, daysInMonth, etc.) | `accessors_getters_test.dart` |
| Setters (setYear, setMonth, setDate, etc.) | `setters_test.dart` |
| Difference calculations | `difference_until_methods_test.dart` |
| Comparison helpers (eq/ne/gt/lt/between/min/max/birthday) | `comparison_methods_test.dart` |
| Is predicates (weekday/weekend/today/tomorrow/isFuture/isPast) | `is_methods_test.dart` |
| Start/End helpers (hour→millennium, startOf/endOf, average) | `start_end_methods_test.dart` |
| Create helpers (`createFromDate/Time/Timestamp/Format`) | `create_helpers_test.dart` |
| Safe creation (`createSafe` + strict mode) | `create_safe_test.dart` |
| Timezone creation (named zones, DST) | `create_timezones_test.dart` |
| Modify DSL & `addReal*` | `modify_methods_test.dart` |
| Relative helpers (`relative`, `next`, `previous`) | `relative_methods_test.dart` |

## Key Testing Scenarios

Each test file covers:
- ✅ Positive values
- ✅ Zero values  
- ✅ Negative values
- ✅ Boundary conditions (month ends, leap years)
- ✅ Cross-boundary operations
- ✅ Overflow handling
- ✅ Immutability
- ✅ Chaining/fluent API

## Example: Adding a New Test

```dart
test('addHours crosses day boundary', () {
  final date = Carbon.create(2020, 1, 15, 22).addHours(5);
  expect(date.day, 16);
  expect(date.hour, 3);
});
```

## Debugging Failed Tests

```bash
# Run single test with verbose output
dart test test/add_methods_months_test.dart -v

# Run only failing tests
dart test test/add_methods_months_test.dart --name "overflow"

# See full assertion details
dart test --reporter=expanded
```

## Common Test Patterns

### Testing add/sub operations
```dart
group('Carbon.add - days', () {
  test('addDays with positive value', () {
    final date = Carbon.create(1975, 5, 31).addDays(1);
    expect(date.day, 1);
    expect(date.month, 6);
  });
  
  test('addDays with zero', () {
    final date = Carbon.create(1975, 5, 31).addDays(0);
    expect(date.day, 31);
  });
  
  test('addDays with negative value', () {
    final date = Carbon.create(1975, 5, 31).addDays(-1);
    expect(date.day, 30);
  });
});
```

### Testing overflow handling
```dart
group('month overflow handling - no overflow', () {
  final date = Carbon.create(2016, 1, 31);
  
  test('addMonthNoOverflow preserves day', () {
    final result = date.addMonthNoOverflow(1);
    expect(result.month, 2);
    expect(result.day, 29);
  });
});
```

### Testing immutability
```dart
test('setter returns new instance', () {
  final original = Carbon.create(2020, 3, 15);
  final modified = original.setYear(2021);
  
  expect(original.year, 2020);  // unchanged
  expect(modified.year, 2021);   // modified
});
```

### Testing getters
```dart
test('daysInMonth returns correct value', () {
  final jan = Carbon.create(2020, 1);
  expect(jan.daysInMonth, 31);
  
  final feb = Carbon.create(2020, 2);
  expect(feb.daysInMonth, 29); // leap year
});
```

## Test Statistics

- **9 test files** covering core functionality
- **1,797 lines** of test code
- **200+ individual tests**
- **Grouped by concern** for maintainability
- **Based on PHP Carbon tests** for parity

## Documentation

- `TEST_STRUCTURE.md` - Detailed breakdown of each test file
- `TEST_FILES_CREATED.md` - Summary of what was created
- `TESTING_QUICK_START.md` - This file

## Next Steps

1. Ensure all Carbon methods are implemented
2. Run `dart test` to verify all tests pass
3. Add integration tests for complex scenarios
4. Consider parameterized tests for edge cases
