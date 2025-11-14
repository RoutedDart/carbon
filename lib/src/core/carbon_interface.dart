part of carbon_internal;

abstract class CarbonInterface implements Comparable<CarbonInterface> {
  DateTime get dateTime;
  String get localeCode;
  String? get timeZoneName;
  CarbonSettings get settings;

  CarbonInterface copyWith({
    DateTime? dateTime,
    String? locale,
    String? timeZone,
    CarbonSettings? settings,
  });

  CarbonInterface setLocale(String locale);
  CarbonInterface tz(String zoneName);
  CarbonInterface toUtc();
  CarbonInterface toLocal();

  CarbonInterface add(Duration duration);
  CarbonInterface subtract(Duration duration);
  CarbonInterface addDays(int days);
  CarbonInterface addWeeks(int weeks);
  CarbonInterface addMonths(int months);
  CarbonInterface addYears(int years);

  CarbonInterface startOfDay();
  CarbonInterface endOfDay();
  CarbonInterface startOfWeek();
  CarbonInterface endOfWeek();
  CarbonInterface startOfMonth();
  CarbonInterface endOfMonth();
  CarbonInterface startOfYear();
  CarbonInterface endOfYear();

  bool isBefore(CarbonInterface other);
  bool isAfter(CarbonInterface other);
  bool isSameDay(CarbonInterface other);
  bool isBetween(
    CarbonInterface start,
    CarbonInterface end, {
    bool inclusive = true,
  });

  Duration diff(CarbonInterface other);
  int diffInDays(CarbonInterface other, {bool absolute = true});
  int diffInHours(CarbonInterface other, {bool absolute = true});
  int diffInMinutes(CarbonInterface other, {bool absolute = true});

  String format(String pattern, {String? locale});
  String toIso8601String();
  String diffForHumans({CarbonInterface? reference, String? locale});
  int toEpochMilliseconds();

  int get year;
  CarbonInterface setYear(int year);
  CarbonInterface years(int year);
  CarbonInterface setMonths(int month);
  CarbonInterface setMonth(int month);
  CarbonInterface setDay(int day);
  CarbonInterface setDays(int day);
  CarbonInterface setMinutes(int minute);
  CarbonInterface setMinute(int minute);
  CarbonInterface setSeconds(int second);
  CarbonInterface setSecond(int second);
  CarbonInterface setYears(int year);
  CarbonInterface setHour(int hour);
  CarbonInterface setHours(int hour);
  CarbonInterface setMicro(int microsecond);
  CarbonInterface setMicros(int microsecond);
  CarbonInterface setMicrosecond(int microsecond);
  CarbonInterface setMicroseconds(int microsecond);
  CarbonInterface setMilli(int millisecond);
  CarbonInterface setMillis(int millisecond);
  CarbonInterface setMillisecond(int millisecond);
  CarbonInterface setMilliseconds(int millisecond);
  int get yearOfCentury;
  int get yearOfDecade;
  int get yearOfMillennium;
  int get yearsInCentury;
  int get yearsInDecade;
  int get yearsInMillennium;
  CarbonPeriod yearsUntil([dynamic endDate, num factor = 1]);
  CarbonPeriod monthsUntil([dynamic endDate, num factor = 1]);
  int get months;
  int get month;
  int get monthOfYear;
  int get monthOfQuarter;
  int get monthOfDecade;
  int get monthOfCentury;
  int get monthOfMillennium;
  int get monthsInYear;
  int get monthsInDecade;
  int get monthsInCentury;
  int get monthsInMillennium;
  int get weekOfYear;
  int get weekOfMonth;
  int get weekOfQuarter;
  int get weekOfDecade;
  int get weekOfCentury;
  int get weekOfMillennium;
  int get weeksInMonth;
  int get weeksInQuarter;
  int get weeksInYear;
  int get weeksInDecade;
  int get weeksInCentury;
  int get weeksInMillennium;
  CarbonPeriod weeksUntil([dynamic endDate, num factor = 1]);
  int get quarterOfYear;
  int get quarterOfDecade;
  int get quarterOfCentury;
  int get quarterOfMillennium;
  int get quartersInYear;
  int get quartersInDecade;
  int get quartersInCentury;
  int get quartersInMillennium;
  CarbonPeriod quartersUntil([dynamic endDate, num factor = 1]);
  int get secondsInMinute;
  int get secondsInHour;
  int get secondsInDay;
  int get secondsInWeek;
  int get secondsInMonth;
  int get secondsInQuarter;
  int get secondsInYear;
  int get secondsInDecade;
  int get secondsInCentury;
  int get secondsInMillennium;
  CarbonPeriod secondsUntil([dynamic endDate, num factor = 1]);
  int get minutes;
  int get minuteOfHour;
  int get minuteOfDay;
  int get minuteOfWeek;
  int get minuteOfMonth;
  int get minuteOfYear;
  int get minutesInHour;
  int get minutesInDay;
  int get minutesInWeek;
  int get minutesInMonth;
  int get minutesInQuarter;
  int get minutesInYear;
  int get minutesInDecade;
  int get minutesInCentury;
  int get minutesInMillennium;
  CarbonPeriod minutesUntil([dynamic endDate, num factor = 1]);
  int get seconds;
  int get secondOfMinute;
  int get secondOfHour;
  int get secondOfDay;
  int get secondOfWeek;
  int get secondOfMonth;
  int get secondOfQuarter;
  int get secondOfYear;
  int get secondOfDecade;
  int get secondOfCentury;
  int get secondOfMillennium;
  String shortAbsoluteDiffForHumans([CarbonInterface? other]);
  String shortRelativeDiffForHumans([CarbonInterface? other]);
  String shortRelativeToNowDiffForHumans();
  String shortRelativeToOtherDiffForHumans(CarbonInterface other);
  CarbonInterface roundSeconds({
    double precision = 1,
    String function = 'round',
  });
  CarbonInterface roundSecond({
    double precision = 1,
    String function = 'round',
  });
  CarbonInterface roundMinutes({
    double precision = 1,
    String function = 'round',
  });
  CarbonInterface roundMinute({
    double precision = 1,
    String function = 'round',
  });
  CarbonInterface roundMonths({
    double precision = 1,
    String function = 'round',
  });
  CarbonInterface roundMonth({double precision = 1, String function = 'round'});
  CarbonInterface roundQuarters({
    double precision = 1,
    String function = 'round',
  });
  CarbonInterface roundQuarter({
    double precision = 1,
    String function = 'round',
  });
  CarbonInterface roundYears({double precision = 1, String function = 'round'});
  CarbonInterface roundYear({double precision = 1, String function = 'round'});
  CarbonInterface roundHours({double precision = 1, String function = 'round'});
  CarbonInterface roundHour({double precision = 1, String function = 'round'});
  CarbonInterface roundDecades({
    double precision = 1,
    String function = 'round',
  });
  CarbonInterface roundDecade({
    double precision = 1,
    String function = 'round',
  });
  CarbonInterface roundMillennia({
    double precision = 1,
    String function = 'round',
  });
  CarbonInterface roundMillennium({
    double precision = 1,
    String function = 'round',
  });
  CarbonInterface roundMilliseconds({
    double precision = 1,
    String function = 'round',
  });
  CarbonInterface roundMillisecond({
    double precision = 1,
    String function = 'round',
  });
  CarbonInterface roundMicroseconds({
    double precision = 1,
    String function = 'round',
  });
  CarbonInterface roundMicrosecond({
    double precision = 1,
    String function = 'round',
  });
  CarbonInterface roundDays({double precision = 1, String function = 'round'});
  CarbonInterface roundDay({double precision = 1, String function = 'round'});
  CarbonInterface roundCenturies({
    double precision = 1,
    String function = 'round',
  });
  CarbonInterface roundCentury({
    double precision = 1,
    String function = 'round',
  });

  Map<String, dynamic> toJson();
  CarbonImmutable toImmutable();
  Carbon toMutable();
}
