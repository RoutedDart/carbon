part of '../carbon.dart';

bool _carbonDateFormatConfigured = false;

/// Ensures the intl-derived formatter consults Carbon's locale data.
void ensureCarbonDateFormatConfigured() {
  if (_carbonDateFormatConfigured) return;
  configureCarbonCarbonDateFormat(
    symbolsBuilder: _buildCarbonDateSymbols,
    skeletonBuilder: _buildCarbonSkeletons,
    localeExists: _localeExists,
  );
  _carbonDateFormatConfigured = true;
}

// ignore: unused_element
final bool _carbonDateFormatAutoInit = (() {
  ensureCarbonDateFormatConfigured();
  return true;
})();

CarbonDateSymbols _buildCarbonDateSymbols(String locale) {
  final CarbonLocaleData data = CarbonTranslator.matchLocale(locale);
  final zeroDigit = data.numbers['0'];

  // Generate narrow month names from short names (first letter)
  final monthsNarrow = data.monthsShort.isNotEmpty
      ? data.monthsShort.map((m) => m.isNotEmpty ? m[0] : '').toList()
      : const <String>[];

  return CarbonDateSymbols(
    locale: locale,
    zeroDigit: zeroDigit != null && zeroDigit.length == 1 ? zeroDigit : null,
    skeletons: _buildCarbonSkeletons(locale),
    months: data.months,
    monthsShort: data.monthsShort,
    monthsNarrow: monthsNarrow,
    weekdays: data.weekdays,
    weekdaysShort: data.weekdaysShort,
    weekdaysNarrow: data.weekdaysMin,
  );
}

Map<String, String> _buildCarbonSkeletons(String locale) {
  final CarbonLocaleData data = CarbonTranslator.matchLocale(locale);
  final formats = data.formats;

  final l = _convertMomentToIcu(formats['L']) ?? 'M/d/y';
  final ll = _removeTimePortion(
    _convertMomentToIcu(formats['LL']) ?? 'MMMM d, y',
  );
  final lll = _removeTimePortion(
    _convertMomentToIcu(formats['LLL']) ?? 'MMM d, y',
  );
  final llll = _removeTimePortion(
    _convertMomentToIcu(formats['LLLL']) ?? 'EEEE, MMMM d, y',
  );

  final lt = _convertMomentToIcu(formats['LT']) ?? 'h:mm a';
  final lts = _convertMomentToIcu(formats['LTS']) ?? 'h:mm:ss a';

  final map = <String, String>{
    'd': 'd',
    'E': 'EEE',
    'EEEE': 'EEEE',
    'LLL': lll,
    'LLLL': llll,
    'M': 'M',
    'Md': l,
    'MEd': 'EEE, $l',
    'MMM': 'MMM',
    'MMMd': 'MMM d',
    'MMMEd': 'EEE, MMM d',
    'MMMM': 'MMMM',
    'MMMMd': ll,
    'MMMMEEEEd': llll,
    'QQQ': 'QQQ',
    'QQQQ': 'QQQQ',
    'y': 'y',
    'yM': 'M/y',
    'yMd': l,
    'yMEd': 'EEE, $l',
    'yMMM': 'MMM y',
    'yMMMd': ll,
    'yMMMEd': 'EEE, $ll',
    'yMMMM': ll,
    'yMMMMd': ll,
    'yMMMMEEEEd': llll,
    'yQQQ': 'QQQ y',
    'yQQQQ': 'QQQQ y',
    'H': 'H',
    'Hm': lt.replaceFirst(RegExp(r'[^Hh]+'), 'H:mm'),
    'Hms': lts.replaceFirst(RegExp(r'[^Hh]+'), 'H:mm:ss'),
    'j': lt,
    'jm': lt,
    'jms': lts,
    'm': 'm',
    'ms': 'm:ss',
    's': 's',
  };

  return map;
}

String _removeTimePortion(String pattern) {
  return pattern
      .replaceAll(RegExp(r"[ ]*[hHkKmsSaAzZ.:']+[ ]*"), ' ')
      .replaceAll(RegExp(r'\s+'), ' ')
      .trim();
}

bool _localeExists(String locale) {
  try {
    CarbonTranslator.matchLocale(locale);
  } catch (_) {
    // Swallow errors here; the formatter will fall back to Carbon's internal
    // locale resolution when it actually builds the symbols.
  }
  return true;
}

String? _convertMomentToIcu(String? pattern) {
  if (pattern == null || pattern.isEmpty) return null;

  final buffer = StringBuffer();
  bool inLiteral = false;

  int index = 0;
  while (index < pattern.length) {
    final remaining = pattern.substring(index);

    if (!inLiteral && remaining.startsWith('[')) {
      inLiteral = true;
      buffer.write("'");
      index++;
      continue;
    }

    if (inLiteral && remaining.startsWith(']')) {
      inLiteral = false;
      buffer.write("'");
      index++;
      continue;
    }

    if (!inLiteral) {
      final match = _momentTokenMappings.firstWhere(
        (entry) => remaining.startsWith(entry.source),
        orElse: () => _TokenMapping('', ''),
      );

      if (match.source.isNotEmpty) {
        buffer.write(match.target);
        index += match.source.length;
        continue;
      }
    }

    final char = pattern[index];
    if (char == "'") {
      buffer.write("''");
    } else {
      buffer.write(char);
    }
    index++;
  }

  if (inLiteral) {
    buffer.write("'");
  }

  final result = buffer.toString().trim();
  return result.isEmpty ? null : result;
}

const _momentTokenMappings = <_TokenMapping>[
  _TokenMapping('YYYY', 'y'),
  _TokenMapping('YY', 'yy'),
  _TokenMapping('MMMM', 'MMMM'),
  _TokenMapping('MMM', 'MMM'),
  _TokenMapping('MM', 'MM'),
  _TokenMapping('M', 'M'),
  _TokenMapping('DD', 'dd'),
  _TokenMapping('D', 'd'),
  _TokenMapping('Do', 'd'),
  _TokenMapping('dddd', 'EEEE'),
  _TokenMapping('ddd', 'EEE'),
  _TokenMapping('dd', 'EE'),
  _TokenMapping('d', 'e'),
  _TokenMapping('A', 'a'),
  _TokenMapping('a', 'a'),
  _TokenMapping('HH', 'HH'),
  _TokenMapping('H', 'H'),
  _TokenMapping('hh', 'hh'),
  _TokenMapping('h', 'h'),
  _TokenMapping('mm', 'mm'),
  _TokenMapping('m', 'm'),
  _TokenMapping('ss', 'ss'),
  _TokenMapping('s', 's'),
];

class _TokenMapping {
  final String source;
  final String target;

  const _TokenMapping(this.source, this.target);
}
