/// Defines iterable date ranges returned by helpers like `Carbon.daysUntil`.
///
/// ```dart
/// for (final day in Carbon.now().daysUntil('2024-01-03')) {
///   print(day.toDateString());
/// }
/// ```
part of '../carbon.dart';

/// Iterable range produced by Carbon's `range*` helpers.
///
/// Periods mirror the PHP Carbon period object: [start] and [end] describe the
/// inclusive bounds and iterating returns every intermediate `Carbon`.
class CarbonPeriod extends Iterable<Carbon> {
  CarbonPeriod._(this._instances, {int? recurrences})
    : _recurrencesLimit = recurrences ?? _instances.length;

  final List<Carbon> _instances;
  final int _recurrencesLimit;

  @override
  bool get isEmpty => _instances.isEmpty;
  @override
  int get length => _instances.length;

  /// First `Carbon` in the period (inclusive).
  Carbon get start => _instances.first;

  /// Last `Carbon` in the period (inclusive).
  Carbon get end => _instances.last;

  @override
  Iterator<Carbon> get iterator => _instances.iterator;

  /// Returns the configured maximum number of occurrences this period should
  /// return. The actual length might be smaller if the source range ended
  /// before the recurrence limit was reached.
  int get maxRecurrences => _recurrencesLimit;

  /// Returns a new period limited to [count] recurrences.
  CarbonPeriod recurrences(int count) {
    if (count <= 0) {
      throw ArgumentError.value(count, 'count', 'must be positive');
    }
    final truncated = _instances.take(count).toList();
    return CarbonPeriod._(truncated, recurrences: count);
  }

  /// Alias for [recurrences].
  CarbonPeriod times(int count) => recurrences(count);

  /// Filters the current period using [predicate] and returns a new period.
  CarbonPeriod filter(bool Function(Carbon) predicate) {
    final filtered = _instances.where(predicate).toList();
    final limited = filtered.take(_recurrencesLimit).toList();
    return CarbonPeriod._(limited, recurrences: _recurrencesLimit);
  }
}
