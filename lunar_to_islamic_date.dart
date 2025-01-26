library lunar_to_islamic_date;

/// A utility to convert a lunar date to an Islamic date.
class LunarToIslamicDate {
  /// Converts a Gregorian lunar date to an Islamic Hijri date.
  /// [year], [month], and [day] are the lunar calendar values.
  static Map<String, int> convertToIslamicDate(int year, int month, int day) {
    // Adjustments and constants
    const int julianEpoch = 1948439;
    final int jd = _julianDay(year, month, day);
    final int daysSinceEpoch = jd - julianEpoch;

    // Islamic date calculation
    final int hijriYear = (daysSinceEpoch / 354.367).floor() + 1;
    final int remainingDays = daysSinceEpoch - ((hijriYear - 1) * 354.367).floor();
    final int hijriMonth = (remainingDays / 29.5).ceil();
    final int hijriDay = remainingDays - ((hijriMonth - 1) * 29.5).floor();

    return {
      'year': hijriYear,
      'month': hijriMonth,
      'day': hijriDay,
    };
  }

  /// Calculates the Julian Day for a given date.
  static int _julianDay(int year, int month, int day) {
    final int a = ((14 - month) / 12).floor();
    final int y = year + 4800 - a;
    final int m = month + 12 * a - 3;
    return day + ((153 * m + 2) / 5).floor() + 365 * y + (y / 4).floor() -
        (y / 100).floor() + (y / 400).floor() - 32045;
  }
}
