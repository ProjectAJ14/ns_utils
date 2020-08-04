extension DateExtensions on DateTime {
  /// If value is NULL returns [Null]
  /// Else returns the difference between current date and the object in days
  /// excluding the the time values
  ///
  int get dayDifference {
    DateTime now = DateTime.now();
    return DateTime(this.year, this.month, this.day)
        .difference(DateTime(now.year, now.month, now.day))
        .inDays;
  }

  /// Returns an ISO-8601 full-precision extended format representation.
  ///
  String toServerFormat() => this?.toUtc()?.toIso8601String();

  /// return true if the date is today
  ///
  bool get isToday => this.dayDifference == 0;

  /// return true if the date is Yesterday
  ///
  bool get isYesterday => this.dayDifference == -1;

  /// return true if the date is Tomorrow
  ///
  bool get isTomorrow => this.dayDifference == 1;

  /// next day
  DateTime tomorrow() => DateTime(year, month, day + 1);

  /// previous day
  DateTime yesterday() => DateTime(year, month, day - 1);
}
