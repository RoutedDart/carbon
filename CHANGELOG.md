## 1.0.0

- Initial version.

- Add Moment-style ISO parsing helpers (`createFromIsoFormat` and
  `createFromLocaleIsoFormat`).
- Extend `translatedFormat`/`isoFormat` coverage for weekday, timezone, and
  preset tokens.
- Enhance `toDebugMap()` to include structured timezone and translator
  metadata similar to PHP Carbon.
- Add `CarbonInterface.serialize()` plus `Carbon.fromSerialized()` and
  `CarbonImmutable.fromSerialized()` helpers for PHP-style round trips.
- Implement `copy()`/`clone()` on `CarbonInterface` so callers can work with
  detached snapshots without mutating the original instance.
- Tighten strict-mode behavior for unknown getters/setters/methods and cover
  the behavior through dedicated `test/strict_mode_test.dart` cases.
- Extend `test/serialization_test.dart`, `test/copy_methods_test.dart`, and
  `test/testing_aids_test.dart` with parity scenarios from the PHP suite.
