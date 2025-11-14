part of carbon_internal;

abstract class CarbonBase implements CarbonInterface {
  CarbonBase({
    required DateTime dateTime,
    String? locale,
    String? timeZone,
    CarbonSettings settings = const CarbonSettings(),
  }) : _dateTime = dateTime.toUtc(),
       _locale = locale ?? 'en',
       _timeZone = timeZone,
       _settings = settings;
  DateTime _dateTime;
  String _locale;
  String? _timeZone;
  CarbonSettings _settings;

  static final Map<String, CarbonMacro> _macros = <String, CarbonMacro>{};
  static tm.DateTimeZoneProvider? _zoneProvider;
  static final Map<String, tm.DateTimeZone> _zoneCache =
      <String, tm.DateTimeZone>{};
  static bool _timeMachineInitialized = false;

  bool get _isMutable => this is Carbon;

  @override
  DateTime get dateTime => _dateTime;

  @override
  String get localeCode => _locale;

  @override
  String? get timeZoneName => _timeZone;

  @override
  CarbonSettings get settings => _settings;

  static void registerMacro(String name, CarbonMacro macro) =>
      _macros[name] = macro;
  static void unregisterMacro(String name) => _macros.remove(name);

  static Future<void> configureTimeMachine({
    tm.DateTimeZoneProvider? provider,
    bool testing = true,
  }) async {
    if (!_timeMachineInitialized) {
      await tm.TimeMachine.initialize({'testing': testing});
      _timeMachineInitialized = true;
    }
    _zoneProvider = provider ?? await tm.DateTimeZoneProviders.tzdb;
    _zoneCache.clear();
  }

  static void resetTimeMachine() {
    _zoneProvider = null;
    _zoneCache.clear();
  }

  CarbonInterface _wrap(DateTime value) {
    final normalized = value.toUtc();
    if (_isMutable) {
      _dateTime = normalized;
      return this;
    }
    return CarbonImmutable._internal(
      dateTime: normalized,
      locale: _locale,
      timeZone: _timeZone,
      settings: _settings,
    );
  }

  CarbonInterface _duplicate({
    DateTime? dateTime,
    String? locale,
    String? timeZone,
    CarbonSettings? settings,
  }) {
    if (_isMutable) {
      if (dateTime != null) {
        _dateTime = dateTime.toUtc();
      }
      if (locale != null) {
        _locale = locale;
      }
      if (timeZone != null) {
        _timeZone = timeZone;
      }
      if (settings != null) {
        _settings = settings;
      }
      return this;
    }
    return CarbonImmutable._internal(
      dateTime: (dateTime ?? _dateTime).toUtc(),
      locale: locale ?? _locale,
      timeZone: timeZone ?? _timeZone,
      settings: settings ?? _settings,
    );
  }

  @override
  CarbonInterface copyWith({
    DateTime? dateTime,
    String? locale,
    String? timeZone,
    CarbonSettings? settings,
  }) => _duplicate(
    dateTime: dateTime,
    locale: locale,
    timeZone: timeZone,
    settings: settings,
  );

  @override
  CarbonInterface setLocale(String locale) => _duplicate(locale: locale);

  @override
  CarbonInterface tz(String zoneName) {
    if (_timeZone == zoneName) {
      return this;
    }
    if (zoneName == 'UTC') {
      return _duplicate(timeZone: 'UTC');
    }
    _getZoneOrThrow(zoneName);
    return _duplicate(timeZone: zoneName);
  }

  @override
  CarbonInterface toUtc() => _wrap(_dateTime.toUtc());

  @override
  CarbonInterface toLocal() => _wrap(_dateTime.toLocal());

  @override
  CarbonInterface add(Duration duration) => _wrap(_dateTime.add(duration));

  @override
  CarbonInterface subtract(Duration duration) => add(-duration);

  @override
  CarbonInterface addDays(int days) => add(Duration(days: days));

  @override
  CarbonInterface addWeeks(int weeks) => add(Duration(days: weeks * 7));

  @override
  CarbonInterface addMonths(int months) => _wrap(_addMonths(_dateTime, months));

  @override
  CarbonInterface addYears(int years) =>
      _wrap(_addMonths(_dateTime, years * 12));

  DateTime _addMonths(DateTime value, int months, {bool? monthOverflow}) {
    final overflow = monthOverflow ?? _settings.monthOverflow;
    final monthIndex = value.month - 1 + months;
    var targetYear = value.year + monthIndex ~/ 12;
    var targetMonth = monthIndex % 12;
    if (targetMonth < 0) {
      targetMonth += 12;
      targetYear -= 1;
    }
    targetMonth += 1;

    if (overflow) {
      return DateTime.utc(
        targetYear,
        targetMonth,
        value.day,
        value.hour,
        value.minute,
        value.second,
        value.millisecond,
        value.microsecond,
      );
    }

    final lastDayOfTarget = DateTime.utc(targetYear, targetMonth + 1, 0).day;
    final clampedDay = value.day > lastDayOfTarget
        ? lastDayOfTarget
        : value.day.clamp(1, lastDayOfTarget);
    return DateTime.utc(
      targetYear,
      targetMonth,
      clampedDay,
      value.hour,
      value.minute,
      value.second,
      value.millisecond,
      value.microsecond,
    );
  }

  @override
  CarbonInterface startOfDay() =>
      _wrap(DateTime.utc(_dateTime.year, _dateTime.month, _dateTime.day));

  @override
  CarbonInterface endOfDay() => _wrap(
    DateTime.utc(
      _dateTime.year,
      _dateTime.month,
      _dateTime.day,
      23,
      59,
      59,
      999,
      999,
    ),
  );

  @override
  CarbonInterface startOfWeek() {
    final delta = (_dateTime.weekday - _settings.startOfWeek + 7) % 7;
    final start = DateTime.utc(
      _dateTime.year,
      _dateTime.month,
      _dateTime.day,
    ).subtract(Duration(days: delta));
    return _wrap(start);
  }

  @override
  CarbonInterface endOfWeek() =>
      startOfWeek().addWeeks(1).subtract(const Duration(microseconds: 1));

  @override
  CarbonInterface startOfMonth() =>
      _wrap(DateTime.utc(_dateTime.year, _dateTime.month, 1));

  @override
  CarbonInterface endOfMonth() => _wrap(
    DateTime.utc(_dateTime.year, _dateTime.month + 1, 0, 23, 59, 59, 999, 999),
  );

  @override
  CarbonInterface startOfYear() => _wrap(DateTime.utc(_dateTime.year, 1, 1));

  @override
  CarbonInterface endOfYear() =>
      _wrap(DateTime.utc(_dateTime.year + 1, 1, 0, 23, 59, 59, 999, 999));

  @override
  int get year => _dateTime.year;

  @override
  CarbonInterface setYear(int year) =>
      _duplicate(dateTime: _copyWith(year: year));

  @override
  CarbonInterface years(int year) => setYear(year);

  @override
  CarbonInterface setYears(int year) => setYear(year);

  @override
  CarbonPeriod monthsUntil([dynamic endDate, num factor = 1]) {
    final target = _coerceToDateTime(endDate);
    final step = (factor == 0 ? 1 : factor.abs()).ceil();
    return _buildPeriod(target, monthStep: step);
  }

  @override
  int get months => _dateTime.month;

  @override
  int get month => _dateTime.month;

  @override
  int get monthOfYear => _dateTime.month;

  @override
  int get monthOfQuarter => ((_dateTime.month - 1) % 3) + 1;

  @override
  int get monthOfDecade =>
      (_dateTime.year - _decadeStart(_dateTime).year) * 12 + _dateTime.month;

  @override
  int get monthOfCentury =>
      (_dateTime.year - _centuryStart(_dateTime).year) * 12 + _dateTime.month;

  @override
  int get monthOfMillennium =>
      (_dateTime.year - _millenniumStart(_dateTime).year) * 12 +
      _dateTime.month;

  @override
  int get monthsInYear => 12;

  @override
  int get monthsInDecade => 120;

  @override
  int get monthsInCentury => 1200;

  @override
  int get monthsInMillennium => 12000;

  @override
  CarbonInterface setMonth(int month) =>
      _duplicate(dateTime: _copyWith(month: month));

  @override
  CarbonInterface setMonths(int month) => setMonth(month);

  @override
  CarbonInterface setDay(int day) => _duplicate(dateTime: _copyWith(day: day));

  @override
  CarbonInterface setDays(int day) => setDay(day);

  @override
  CarbonInterface setMinute(int minute) =>
      _duplicate(dateTime: _copyWith(minute: minute));

  @override
  CarbonInterface setMinutes(int minute) => setMinute(minute);

  @override
  CarbonInterface setSecond(int second) =>
      _duplicate(dateTime: _copyWith(second: second));

  @override
  CarbonInterface setSeconds(int second) => setSecond(second);

  @override
  CarbonInterface setHour(int hour) =>
      _duplicate(dateTime: _copyWith(hour: hour));

  @override
  CarbonInterface setHours(int hour) => setHour(hour);

  @override
  CarbonInterface setMilli(int millisecond) =>
      _duplicate(dateTime: _copyWith(millisecond: millisecond));

  @override
  CarbonInterface setMillis(int millisecond) => setMilli(millisecond);

  @override
  CarbonInterface setMillisecond(int millisecond) => setMilli(millisecond);

  @override
  CarbonInterface setMilliseconds(int millisecond) => setMilli(millisecond);

  @override
  CarbonInterface setMicro(int microsecond) =>
      _duplicate(dateTime: _copyWith(microsecond: microsecond));

  @override
  CarbonInterface setMicros(int microsecond) => setMicro(microsecond);

  @override
  CarbonInterface setMicrosecond(int microsecond) => setMicro(microsecond);

  @override
  CarbonInterface setMicroseconds(int microsecond) => setMicro(microsecond);

  @override
  int get yearOfCentury => _wrapModulo(_dateTime.year - 1, 100) + 1;

  @override
  int get yearOfDecade => _wrapModulo(_dateTime.year - 1, 10) + 1;

  @override
  int get yearOfMillennium => _wrapModulo(_dateTime.year - 1, 1000) + 1;

  @override
  int get yearsInCentury => 100;

  @override
  int get yearsInDecade => 10;

  @override
  int get yearsInMillennium => 1000;

  @override
  CarbonPeriod yearsUntil([dynamic endDate, num factor = 1]) {
    final target = _coerceToDateTime(endDate);
    final stepMonths = (factor == 0 ? 1 : factor.abs()).ceil() * 12;
    return _buildPeriod(target, monthStep: stepMonths);
  }

  @override
  int get weekOfYear =>
      _weekIndex(DateTime.utc(_dateTime.year, 1, 1), _dateTime);

  @override
  int get weekOfMonth =>
      _weekIndex(DateTime.utc(_dateTime.year, _dateTime.month, 1), _dateTime);

  @override
  int get weekOfQuarter => _weekIndex(_quarterStart(_dateTime), _dateTime);

  @override
  int get weekOfDecade => _weekIndex(_decadeStart(_dateTime), _dateTime);

  @override
  int get weekOfCentury => _weekIndex(_centuryStart(_dateTime), _dateTime);

  @override
  int get weekOfMillennium =>
      _weekIndex(_millenniumStart(_dateTime), _dateTime);

  @override
  int get weeksInMonth => _weeksBetween(
    DateTime.utc(_dateTime.year, _dateTime.month, 1),
    DateTime.utc(_dateTime.year, _dateTime.month + 1, 1),
  );

  @override
  int get weeksInQuarter => _weeksBetween(
    _quarterStart(_dateTime),
    DateTime.utc(
      _quarterStart(_dateTime).year,
      _quarterStart(_dateTime).month + 3,
      1,
    ),
  );

  @override
  int get weeksInYear => _weeksBetween(
    DateTime.utc(_dateTime.year, 1, 1),
    DateTime.utc(_dateTime.year + 1, 1, 1),
  );

  @override
  int get weeksInDecade => _weeksBetween(
    _decadeStart(_dateTime),
    DateTime.utc(_decadeStart(_dateTime).year + 10, 1, 1),
  );

  @override
  int get weeksInCentury => _weeksBetween(
    _centuryStart(_dateTime),
    DateTime.utc(_centuryStart(_dateTime).year + 100, 1, 1),
  );

  @override
  int get weeksInMillennium => _weeksBetween(
    _millenniumStart(_dateTime),
    DateTime.utc(_millenniumStart(_dateTime).year + 1000, 1, 1),
  );

  @override
  CarbonPeriod weeksUntil([dynamic endDate, num factor = 1]) {
    final target = _coerceToDateTime(endDate);
    final stepWeeks = (factor == 0 ? 1 : factor.abs()).ceil();
    return _buildPeriod(target, durationStep: Duration(days: stepWeeks * 7));
  }

  @override
  int get quarterOfYear => ((_dateTime.month - 1) ~/ 3) + 1;

  @override
  int get quarterOfDecade =>
      (_dateTime.year - _decadeStart(_dateTime).year) * 4 + quarterOfYear;

  @override
  int get quarterOfCentury =>
      (_dateTime.year - _centuryStart(_dateTime).year) * 4 + quarterOfYear;

  @override
  int get quarterOfMillennium =>
      (_dateTime.year - _millenniumStart(_dateTime).year) * 4 + quarterOfYear;

  @override
  int get quartersInYear => 4;

  @override
  int get quartersInDecade => 40;

  @override
  int get quartersInCentury => 400;

  @override
  int get quartersInMillennium => 4000;

  @override
  CarbonPeriod quartersUntil([dynamic endDate, num factor = 1]) {
    final target = _coerceToDateTime(endDate);
    final step = (factor == 0 ? 1 : factor.abs()).ceil() * 3;
    return _buildPeriod(target, monthStep: step);
  }

  @override
  int get secondsInMinute => 60;

  @override
  int get secondsInHour => secondsInMinute * 60;

  @override
  int get secondsInDay => secondsInHour * 24;

  @override
  int get secondsInWeek => secondsInDay * 7;

  @override
  int get secondsInMonth => _secondsBetween(
    DateTime.utc(_dateTime.year, _dateTime.month, 1),
    DateTime.utc(_dateTime.year, _dateTime.month + 1, 1),
  );

  @override
  int get secondsInQuarter => _secondsBetween(
    _quarterStart(_dateTime),
    DateTime.utc(
      _quarterStart(_dateTime).year,
      _quarterStart(_dateTime).month + 3,
      1,
    ),
  );

  @override
  int get secondsInYear => _secondsBetween(
    DateTime.utc(_dateTime.year, 1, 1),
    DateTime.utc(_dateTime.year + 1, 1, 1),
  );

  @override
  int get secondsInDecade => secondsInYear * 10;

  @override
  int get secondsInCentury => secondsInYear * 100;

  @override
  int get secondsInMillennium => secondsInYear * 1000;

  @override
  CarbonPeriod secondsUntil([dynamic endDate, num factor = 1]) {
    final target = _coerceToDateTime(endDate);
    final stepSeconds = (factor == 0 ? 1 : factor.abs()).ceil();
    return _buildPeriod(target, durationStep: Duration(seconds: stepSeconds));
  }

  @override
  int get minutesInWeek => secondsInWeek ~/ 60;

  @override
  int get minutesInYear => secondsInYear ~/ 60;

  @override
  CarbonPeriod minutesUntil([dynamic endDate, num factor = 1]) {
    final target = _coerceToDateTime(endDate);
    final stepMinutes = (factor == 0 ? 1 : factor.abs()).ceil();
    return _buildPeriod(target, durationStep: Duration(minutes: stepMinutes));
  }

  @override
  int get seconds => _dateTime.second;

  @override
  int get second => seconds;

  @override
  int get secondOfMinute => _dateTime.second + 1;

  @override
  int get secondOfHour => _dateTime.minute * secondsInMinute + secondOfMinute;

  @override
  int get secondOfDay =>
      _secondsSince(
        DateTime.utc(_dateTime.year, _dateTime.month, _dateTime.day),
      ) +
      1;

  @override
  int get secondOfWeek =>
      _secondsSince(
        DateTime.utc(
          _dateTime.year,
          _dateTime.month,
          _dateTime.day,
        ).subtract(Duration(days: _dateTime.weekday - 1)),
      ) +
      1;

  @override
  int get secondOfMonth =>
      _secondsSince(DateTime.utc(_dateTime.year, _dateTime.month, 1)) + 1;

  @override
  int get secondOfQuarter => _secondsSince(_quarterStart(_dateTime)) + 1;

  @override
  int get secondOfYear => _secondsSince(DateTime.utc(_dateTime.year, 1, 1)) + 1;

  @override
  int get secondOfDecade => _secondsSince(_decadeStart(_dateTime)) + 1;

  @override
  int get secondOfCentury => _secondsSince(_centuryStart(_dateTime)) + 1;

  @override
  int get secondOfMillennium => _secondsSince(_millenniumStart(_dateTime)) + 1;

  @override
  CarbonInterface roundSeconds({
    double precision = 1,
    String function = 'round',
  }) => this;

  @override
  CarbonInterface roundSecond({
    double precision = 1,
    String function = 'round',
  }) => roundSeconds(precision: precision, function: function);

  @override
  CarbonInterface roundMinutes({
    double precision = 1,
    String function = 'round',
  }) => this;

  @override
  CarbonInterface roundMinute({
    double precision = 1,
    String function = 'round',
  }) => roundMinutes(precision: precision, function: function);

  @override
  CarbonInterface roundMonths({
    double precision = 1,
    String function = 'round',
  }) => this;

  @override
  CarbonInterface roundMonth({
    double precision = 1,
    String function = 'round',
  }) => roundMonths(precision: precision, function: function);

  @override
  CarbonInterface roundQuarters({
    double precision = 1,
    String function = 'round',
  }) => this;

  @override
  CarbonInterface roundQuarter({
    double precision = 1,
    String function = 'round',
  }) => roundQuarters(precision: precision, function: function);

  @override
  CarbonInterface roundYears({
    double precision = 1,
    String function = 'round',
  }) => this;

  @override
  CarbonInterface roundYear({
    double precision = 1,
    String function = 'round',
  }) => roundYears(precision: precision, function: function);

  @override
  CarbonInterface roundHours({
    double precision = 1,
    String function = 'round',
  }) => this;

  @override
  CarbonInterface roundHour({
    double precision = 1,
    String function = 'round',
  }) => roundHours(precision: precision, function: function);

  @override
  CarbonInterface roundDecades({
    double precision = 1,
    String function = 'round',
  }) => this;

  @override
  CarbonInterface roundDecade({
    double precision = 1,
    String function = 'round',
  }) => roundDecades(precision: precision, function: function);

  @override
  CarbonInterface roundMillennia({
    double precision = 1,
    String function = 'round',
  }) => this;

  @override
  CarbonInterface roundMillennium({
    double precision = 1,
    String function = 'round',
  }) => roundMillennia(precision: precision, function: function);

  @override
  CarbonInterface roundMilliseconds({
    double precision = 1,
    String function = 'round',
  }) => this;

  @override
  CarbonInterface roundMillisecond({
    double precision = 1,
    String function = 'round',
  }) => roundMilliseconds(precision: precision, function: function);

  @override
  CarbonInterface roundMicroseconds({
    double precision = 1,
    String function = 'round',
  }) => this;

  @override
  CarbonInterface roundMicrosecond({
    double precision = 1,
    String function = 'round',
  }) => roundMicroseconds(precision: precision, function: function);

  @override
  CarbonInterface roundDays({
    double precision = 1,
    String function = 'round',
  }) => this;

  @override
  CarbonInterface roundDay({double precision = 1, String function = 'round'}) =>
      roundDays(precision: precision, function: function);

  @override
  CarbonInterface roundCenturies({
    double precision = 1,
    String function = 'round',
  }) => this;

  @override
  CarbonInterface roundCentury({
    double precision = 1,
    String function = 'round',
  }) => roundCenturies(precision: precision, function: function);

  @override
  bool isBefore(CarbonInterface other) => _dateTime.isBefore(other.dateTime);

  @override
  bool isAfter(CarbonInterface other) => _dateTime.isAfter(other.dateTime);

  @override
  bool isSameDay(CarbonInterface other) =>
      _dateTime.year == other.dateTime.year &&
      _dateTime.month == other.dateTime.month &&
      _dateTime.day == other.dateTime.day;

  @override
  bool isBetween(
    CarbonInterface start,
    CarbonInterface end, {
    bool inclusive = true,
  }) {
    if (inclusive) {
      final lower = isAfter(start) || isSameDay(start);
      final upper = isBefore(end) || isSameDay(end);
      return lower && upper;
    }
    return isAfter(start) && isBefore(end);
  }

  @override
  Duration diff(CarbonInterface other) => _dateTime.difference(other.dateTime);

  int _diffIn(Duration portion, CarbonInterface other, {bool absolute = true}) {
    final value = diff(other).inMicroseconds / portion.inMicroseconds;
    final truncated = value.truncate();
    return absolute ? truncated.abs() : truncated;
  }

  @override
  int diffInDays(CarbonInterface other, {bool absolute = true}) =>
      _diffIn(const Duration(days: 1), other, absolute: absolute);

  @override
  int diffInHours(CarbonInterface other, {bool absolute = true}) =>
      _diffIn(const Duration(hours: 1), other, absolute: absolute);

  @override
  int diffInMinutes(CarbonInterface other, {bool absolute = true}) =>
      _diffIn(const Duration(minutes: 1), other, absolute: absolute);

  @override
  String format(String pattern, {String? locale}) {
    final snapshot = _zoneSnapshot();
    if (snapshot == null) {
      final formatter = DateFormat(pattern, locale ?? _locale);
      return formatter.format(_dateTime.toUtc());
    }
    return _formatWithZone(pattern, snapshot, locale ?? _locale);
  }

  @override
  String toIso8601String() => _dateTime.toUtc().toIso8601String();

  @override
  String diffForHumans({CarbonInterface? reference, String? locale}) {
    final base = (reference?.dateTime ?? clock.now()).toUtc();
    return timeago.format(
      _dateTime,
      locale: locale ?? _locale,
      allowFromNow: true,
      clock: base,
    );
  }

  @override
  String shortAbsoluteDiffForHumans([CarbonInterface? other]) =>
      diffForHumans(reference: other);

  @override
  String shortRelativeDiffForHumans([CarbonInterface? other]) =>
      diffForHumans(reference: other);

  @override
  String shortRelativeToNowDiffForHumans() => diffForHumans();

  @override
  String shortRelativeToOtherDiffForHumans(CarbonInterface other) =>
      diffForHumans(reference: other);

  @override
  int toEpochMilliseconds() => _dateTime.toUtc().millisecondsSinceEpoch;

  @override
  Map<String, dynamic> toJson() => {
    'iso': toIso8601String(),
    'epochMs': toEpochMilliseconds(),
    'locale': _locale,
    if (_timeZone != null) 'timeZone': _timeZone,
  };

  @override
  CarbonImmutable toImmutable() => this is CarbonImmutable
      ? this as CarbonImmutable
      : CarbonImmutable._internal(
          dateTime: _dateTime,
          locale: _locale,
          timeZone: _timeZone,
          settings: _settings,
        );

  @override
  Carbon toMutable() => this is Carbon
      ? this as Carbon
      : Carbon._internal(
          dateTime: _dateTime,
          locale: _locale,
          timeZone: _timeZone,
          settings: _settings,
        );

  @override
  int compareTo(CarbonInterface other) => _dateTime.compareTo(other.dateTime);

  @override
  bool operator ==(Object other) =>
      other is CarbonInterface && dateTime == other.dateTime;

  @override
  int get hashCode => dateTime.hashCode;

  CarbonInterface _applyTemporalUnit(
    _TemporalUnit unit,
    int amount,
    bool? overflow,
  ) {
    if (unit.months != null) {
      final months = amount * unit.months!;
      return _wrap(_addMonths(_dateTime, months, monthOverflow: overflow));
    }
    final micros = amount * unit.microseconds!;
    return _wrap(_dateTime.add(Duration(microseconds: micros)));
  }

  CarbonTimeZoneSnapshot? _zoneSnapshot() {
    final zoneName = _timeZone;
    if (zoneName == null) {
      return null;
    }
    if (zoneName == 'UTC') {
      return CarbonTimeZoneSnapshot(
        localDateTime: _dateTime.toUtc(),
        abbreviation: 'UTC',
        offset: Duration.zero,
      );
    }
    if (_zoneProvider == null) {
      return null;
    }
    final zone = _getZoneOrThrow(zoneName);
    final instant = tm.Instant.dateTime(_dateTime);
    final zoned = instant.inZone(zone);
    final zoneInterval = zone.getZoneInterval(instant);
    return CarbonTimeZoneSnapshot(
      localDateTime: zoned.localDateTime.toDateTimeLocal(),
      abbreviation: zoneInterval.name ?? zone.id,
      offset: Duration(seconds: zoned.offset.inSeconds),
    );
  }

  tm.DateTimeZone _getZoneOrThrow(String zoneName) {
    final provider = _zoneProvider;
    if (provider == null) {
      throw StateError(
        'Named timezone "$zoneName" requires calling Carbon.configureTimeMachine() first.',
      );
    }
    return _zoneCache.putIfAbsent(zoneName, () {
      try {
        return provider.getDateTimeZoneSync(zoneName);
      } on Object {
        throw StateError('Unknown timezone "$zoneName".');
      }
    });
  }

  String _formatWithZone(
    String pattern,
    CarbonTimeZoneSnapshot snapshot,
    String locale,
  ) {
    final placeholderRegex = RegExp('z+');
    var sanitizedPattern = pattern;
    final replacements = <String, String>{};
    var matchIndex = 0;
    for (final match in placeholderRegex.allMatches(pattern)) {
      final token = '@@carbon_zone_$matchIndex@@';
      sanitizedPattern = sanitizedPattern.replaceRange(
        match.start,
        match.end,
        "'$token'",
      );
      final length = match.group(0)!.length;
      replacements[token] = length <= 3
          ? snapshot.abbreviation
          : _formatOffset(snapshot.offset, includePrefix: true);
      matchIndex++;
    }
    final formatter = DateFormat(sanitizedPattern, locale);
    var result = formatter.format(snapshot.localDateTime);
    replacements.forEach((token, value) {
      result = result.replaceAll(token, value);
    });
    return result;
  }

  String _formatOffset(Duration offset, {bool includePrefix = false}) {
    final totalMinutes = offset.inMinutes;
    final sign = totalMinutes >= 0 ? '+' : '-';
    final absMinutes = totalMinutes.abs();
    final hours = (absMinutes ~/ 60).toString().padLeft(2, '0');
    final minutes = (absMinutes % 60).toString().padLeft(2, '0');
    final core = '$sign$hours:$minutes';
    return includePrefix ? 'GMT$core' : core;
  }

  @override
  dynamic noSuchMethod(Invocation invocation) {
    final name = _symbolToName(invocation.memberName);
    final aliasResult = _invokeAlias(this, name, invocation);
    if (!identical(aliasResult, _aliasNotHandled)) {
      return aliasResult;
    }
    final macro = _macros[name];
    if (macro != null) {
      return macro(
        this,
        invocation.positionalArguments,
        invocation.namedArguments,
      );
    }
    return super.noSuchMethod(invocation);
  }

  String _symbolToName(Symbol symbol) {
    final description = symbol.toString();
    return description
        .replaceAll('Symbol("', '')
        .replaceAll('Symbol(\'', '')
        .replaceAll('")', '')
        .replaceAll("')", '');
  }

  DateTime _copyWith({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
  }) => DateTime.utc(
    year ?? _dateTime.year,
    month ?? _dateTime.month,
    day ?? _dateTime.day,
    hour ?? _dateTime.hour,
    minute ?? _dateTime.minute,
    second ?? _dateTime.second,
    millisecond ?? _dateTime.millisecond,
    microsecond ?? _dateTime.microsecond,
  );

  int _wrapModulo(int value, int modulus) {
    final result = value % modulus;
    return result < 0 ? result + modulus : result;
  }

  DateTime _coerceToDateTime(dynamic input) {
    if (input == null) {
      return clock.now().toUtc();
    }
    if (input is CarbonInterface) {
      return input.dateTime;
    }
    if (input is DateTime) {
      return input.isUtc ? input : input.toUtc();
    }
    if (input is String || input is num) {
      return Carbon.parse(input).dateTime;
    }
    throw ArgumentError('Unsupported endDate type: ${input.runtimeType}');
  }

  CarbonPeriod _buildPeriod(
    DateTime target, {
    int? monthStep,
    Duration? durationStep,
  }) {
    assert((monthStep != null) ^ (durationStep != null));
    final forward = !target.isBefore(_dateTime);
    final items = <Carbon>[];
    var cursor = _dateTime;
    const maxIterations = 10000;
    for (var i = 0; i < maxIterations; i++) {
      if (forward ? cursor.isAfter(target) : cursor.isBefore(target)) {
        break;
      }
      items.add(
        Carbon.fromDateTime(cursor, locale: _locale, settings: _settings),
      );
      DateTime next;
      if (monthStep != null) {
        next = _addMonths(cursor, forward ? monthStep : -monthStep);
      } else {
        final delta = durationStep!;
        final micro = delta.inMicroseconds * (forward ? 1 : -1);
        next = cursor.add(Duration(microseconds: micro));
      }
      if (next.isAtSameMomentAs(cursor)) {
        break;
      }
      cursor = next;
    }
    return CarbonPeriod._(items);
  }

  int _weekIndex(DateTime origin, DateTime current) {
    final days = current.difference(origin).inDays;
    return (days ~/ 7) + 1;
  }

  int _weeksBetween(DateTime start, DateTime endExclusive) {
    final days = endExclusive.difference(start).inDays;
    return (days / 7).ceil();
  }

  int _secondsBetween(DateTime start, DateTime endExclusive) =>
      endExclusive.difference(start).inSeconds;

  int _secondsSince(DateTime anchor) => _dateTime.difference(anchor).inSeconds;

  DateTime _quarterStart(DateTime dateTime) {
    final quarter = ((dateTime.month - 1) ~/ 3) * 3 + 1;
    return DateTime.utc(dateTime.year, quarter, 1);
  }

  DateTime _decadeStart(DateTime dateTime) {
    final decade = (dateTime.year ~/ 10) * 10;
    return DateTime.utc(decade, 1, 1);
  }

  DateTime _centuryStart(DateTime dateTime) {
    final century = ((dateTime.year - 1) ~/ 100) * 100 + 1;
    return DateTime.utc(century, 1, 1);
  }

  DateTime _millenniumStart(DateTime dateTime) {
    final millennium = ((dateTime.year - 1) ~/ 1000) * 1000 + 1;
    return DateTime.utc(millennium, 1, 1);
  }
}
