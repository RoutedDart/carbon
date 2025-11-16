# Missing Test Coverage Analysis

## Summary
Out of 48 PHP Carbon tests, the Dart Carbon implementation now has coverage across **27 Dart test files** that mirror every PHP suite.
There are **0 missing test files** remaining.

## Test Coverage Status

### ✓ Implemented Tests (27)
- `add_methods_years_test.dart` - Year addition
- `add_methods_months_test.dart` - Month addition  
- `add_methods_days_weeks_test.dart` - Day/week addition
- `add_methods_time_units_test.dart` - Time unit addition
- `add_methods_large_units_test.dart` - Quarter/decade/century/millennium
- `accessors_getters_test.dart` - Basic getters (year, month, day, etc.)
- `setters_test.dart` - Basic setters
- `difference_until_methods_test.dart` - Partial diff methods
- `ceil_floor_round_methods_test.dart` - Rounding operations
- `carbon_test.dart` - General tests
- `php_carbon_parity_test.dart` - PHP parity tests
- `comparison_methods_test.dart` - Equality/inequality helpers, between/min/max, birthday detection
- `is_methods_test.dart` - Weekday/weekend predicates plus today/tomorrow/yesterday/future/past/leap-year checks
- `start_end_methods_test.dart` - Start/end helpers for hour→millennium plus dynamic `startOf`/`endOf` and `average()`
- `create_helpers_test.dart` - `createFrom*` factories (date/time/timeString/timestamp/format)
- `create_safe_test.dart` - `createSafe` strict-mode behavior
- `create_timezones_test.dart` - Timezone-aware creation (fixed offsets, named zones, DST gaps)
- `modify_methods_test.dart` - `modify` DSL + `addReal*` DST coverage
- `relative_methods_test.dart` - `relative`, `next`, and `previous` helpers
- `copy_methods_test.dart` - Copy/clone/macro parity checks
- `strict_mode_test.dart` - Strict-mode getters/setters/methods coverage
- `create_from_date_test.dart` - Parity for `CreateFromDateTest.php`
- `create_from_time_test.dart` - Parity for `CreateFromTimeTest.php`
- `create_from_timestamp_test.dart` - Parity for `CreateFromTimestampTest.php`
- `create_from_format_test.dart` - Parity for `CreateFromFormatTest.php`
- `isset_test.dart` - Parity for `IssetTest.php`

### ✗ Missing Test Categories (27)

#### Critical Core Functionality (5 tests)
- ~~**CreateFromDateTest.php** - `createFromDate()` constructor variant~~ ✅ Covered by `test/create_from_date_test.dart`.
- ~~**CreateFromFormatTest.php** - `createFromFormat()` for parsing strings~~ ✅ Covered by `test/create_from_format_test.dart`.
- ~~**CreateFromTimeTest.php** - `createFromTime(hour, minute, second)` constructor~~ ✅ Covered by `test/create_from_time_test.dart`.
- ~~**CreateFromTimestampTest.php** - `createFromTimestamp()` from Unix timestamps~~ ✅ Covered by `test/create_from_timestamp_test.dart`.
- ~~**IssetTest.php** - Magic method `__isset()` support~~ ✅ `test/isset_test.dart` verifies every PHP surface property via typed Dart getters.

#### String Parsing & Construction (4 tests)
- ~~**CreateTest.php** - `create()` method variants and options~~ ✅ Covered via `test/create_test.dart` (php-style `Carbon.createPhp`/`Carbon.make`) and `test/create_locale_test.dart` (locale parsing + `createFromLocaleFormat`).
- ~~**CreateFromTimeStringTest.php** - Parsing time strings like "14:30:45"~~ ✅ Covered via `test/create_from_time_string_test.dart` (HH:MM, HH:MM:SS, fractional seconds, and timezone arguments).
- ~~**CreateSafeTest.php** - Safe variant with error handling~~ ✅ `test/create_safe_test.dart` now asserts every field range, leap-year rules, DST gaps, and strict-mode nullability.
- ~~**CreateStrictTest.php** - Strict mode with validation~~ ✅ Same suite exercises `Carbon.createStrict` toggling strict mode on/off and surfacing range violations.

#### Date Manipulation (3 tests)
- ~~**RelativeDateStringTest.php** - Parsing "next Monday", "+2 weeks", etc.~~ ✅ Covered by `test/relative_keyword_detection_test.dart`.
- ~~**SubTest.php** - Subtraction operations (subtract, subDays, subMonths, etc.)~~ ✅ Covered via `test/sub_methods_test.dart`.
- ~~**DayOfWeekModifiersTest.php** - `next()`, `previous()` for specific weekdays~~ ✅ Covered via `test/day_of_week_modifiers_test.dart` (weekend config, start/end helpers, nth-of-* variants).

#### Querying & Comparison (2 tests)
- ~~**ExpressiveComparisonTest.php** - Methods like `isSameAs()`, `isAfter()`, `isBefore()`~~ ✅ Alias coverage lives in `test/comparison_methods_test.dart` (new `isAfter`/`isBefore` parity group).
- ~~**CopyTest.php** - `copy()` method~~ ✅ Covered by `test/copy_methods_test.dart`.

#### Formatting & Conversion (0 open tests)
- ~~**StringsTest.php** - String formatting: `format()`, `toDateString()`, `toTimeString()`, etc.~~ ✅ Covered by `test/string_methods_test.dart` + `test/string_wrapper_formats_test.dart`.
- ~~**ArraysTest.php** - Array conversion: `toArray()`~~ ✅ Covered by `test/string_methods_test.dart` (`toArray`/`toObject` group).
- ~~**ObjectsTest.php** - Object conversion methods~~ ✅ Same as above.

#### Utilities & Advanced (3 tests)
- ~~**MacroTest.php** - Macro registration and calling~~ ✅ `test/macro_methods_test.dart` now exercises macro registration/unregistration and property-style macros.
- ~~**GenericMacroTest.php** - Generic macro support~~ ✅ Same coverage as above (macros accept positional/named arguments and closures).
- ~~**InstanceTest.php** - Instance type checking~~ ✅ Covered by `test/instance_methods_test.dart`.
- ~~**JsonSerializationTest.php** - JSON serialization methods~~ ✅ Exercised via `test/serialization_test.dart`.
- ~~**SerializationTest.php** - PHP serialization support~~ ✅ `CarbonInterface.serialize` + `test/serialization_test.dart` now exercise round-trips via `Carbon.fromSerialized()`.
- ~~**WeekTest.php** - Week-related queries and operations~~ ✅ `test/week_math_test.dart` covers ISO + locale week numbers and week-year calculations.
- ~~**SetDateAndTimeFromTest.php** - `setDateFrom()`, `setTimeFrom()` methods.~~ ✅ Covered via `test/set_date_time_from_test.dart`.

#### Settings & Global State (3 tests)
- ~~**SettingsTest.php** - Global settings for locale, start of week, etc.~~ ✅ Covered via `test/settings_management_test.dart` (week start + weekend settings + locale influence).
- ~~**NowAndOtherStaticHelpersTest.php** - Static methods: `now()`, `today()`, `yesterday()`, etc.~~ ✅ Extended `test/static_helpers_test.dart` to cover locale/timezone propagation and derivatives.
- ~~**NowDerivativesTest.php** - Derivatives of now: `tomorrow()`, `yesterday()`, etc.~~ ✅ Same suite now checks `yesterday`/`tomorrow` under mocked clocks.

- ~~**LocalizationTest.php** - i18n/localization support~~ ✅ `test/localization_test.dart` verifies global and per-instance locale behavior.
- ~~**TestingAidsTest.php** - Testing helpers like `setTestNow()`, `getTestNow()`~~ ✅ `test/testing_aids_test.dart` now covers closure resets and immutable propagation.
- ~~**LastErrorTest.php** - Error handling and reporting~~ ✅ `test/last_error_test.dart` exercises instance `getLastErrors()` plus the static `lastErrorsSnapshot()` helper.
- ~~**StrictModeTest.php** - Strict mode validation~~ ✅ `test/strict_mode_test.dart` exercises getter/setter/method fallbacks and strict-mode toggles.
- ~~**ModifyNearDSTChangeTest.php** - DST (Daylight Saving Time) edge cases~~ ✅ `test/modify_near_dst_change_test.dart` covers spring-forward and fall-back transitions with named zones.
- ~~**PhpBug72338Test.php** - PHP-specific regression test~~ ✅ `test/php_bug_72338_test.dart` locks timestamp stability across timezone changes and `modify()` calls.

## Priority Implementation Order

### Phase 1: Core Functionality (Essential)
1. ~~**CreateFromDateTest** - Common constructor pattern~~ ✅ Covered by `test/create_from_date_test.dart`.
2. ~~**CreateFromFormatTest** - Parsing via explicit formats~~ ✅ Covered by `test/create_from_format_test.dart`.
3. ~~**CreateFromTimeTest / CreateFromTimestampTest** - Time-focused constructors~~ ✅ Covered by `test/create_from_time_test.dart` + `test/create_from_timestamp_test.dart`.
4. ~~**IssetTest** - Magic property access for core getters~~ ✅ Mirrored via `test/isset_test.dart` using typed getters and localized formatters.

### Phase 2: String Parsing (High Value)
5. ~~**ModifyTest** - String-based date modification~~ ✅ `test/modify_methods_test.dart` mirrors PHP scenarios, including real diff helpers.
6. ~~**RelativeTest** - Relative date parsing~~ ✅ `test/relative_methods_test.dart` + `test/relative_keyword_detection_test.dart` cover seconds-since-midnight, keyword parsing, and DST-aware keywords.

### Phase 3: Extended Features (Nice to Have)
7. ~~**Subtraction operations** - SubTest~~ ✅ `test/sub_methods_test.dart` exercises `sub()` signatures plus each shorthand helper.
8. ~~**String formatting** - StringsTest~~ ✅ `test/string_methods_test.dart` + `test/string_wrapper_formats_test.dart`.
9. ~~**Macros** - MacroTest~~ ✅ `test/macro_methods_test.dart`.

### Phase 4: Polish & Utilities (Lower Priority)
11. ~~Serialization tests~~
12. ~~Localization tests~~  
13. ~~Testing utilities~~
14. ~~Settings management~~

## Analysis Notes

- Constructor helpers such as `create()`/`createFromTimeString` remain the biggest parity gaps; the math/comparison surface is now mostly covered.
- Macro coverage is complete and serialization now round-trips locale/timezone data; the outstanding scaffolding work lives in DST regressions (`ModifyNearDSTChangeTest.php`, `PhpBug72338Test.php`).
- `create_from_date_test.dart`, `create_from_time_test.dart`, `create_from_timestamp_test.dart`, `create_from_format_test.dart`, `modify_methods_test.dart`, `relative_methods_test.dart`, and `isset_test.dart` now mirror the PHP suite for constructors/relative helpers.
- Dynamic magic like `__isset` is intentionally excluded; Dart callers should rely on the explicit getters already exposed on `CarbonInterface`.
- Serialization, copy semantics, and testing aids now mirror PHP coverage thanks to `test/serialization_test.dart`, `test/copy_methods_test.dart`, and `test/testing_aids_test.dart`; constructor helpers are fully covered (including safe/strict variants), so new PHP suites should be added here only when upstream introduces them.

## Next Steps

1. Continue auditing `MISSING_TESTS_ANALYSIS.md` after each addition to confirm no new PHP suites appear, especially locale-heavy parsing cases that rely on the expanded dictionaries.
