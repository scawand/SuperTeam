
extension StartOfDay on DateTime {
  static DateTime sinceStartOfDay(
      [int hour = 0, int minute = 0, int second = 0, int milisecond = 0]) {
    final now = DateTime.now();
    return DateTime(
        now.year, now.month, now.day, hour, minute, second, milisecond);
  }
}
