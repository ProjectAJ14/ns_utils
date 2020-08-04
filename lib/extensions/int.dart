import 'package:ns_utils/constants.dart';

extension IntExtensions on int {
  /// If value is NULL or not in [covered cases] return default value [defaultString]
  /// Else returns the mapped value
  ///
  String get dayPrefix {
    String _prefix = defaultString;
    switch (this) {
      case -1:
        _prefix = 'Yesterday';
        break;
      case 0:
        _prefix = 'Today';
        break;
      case 1:
        _prefix = 'Tomorrow';
        break;
    }
    return _prefix;
  }

  /// Convert this integer into boolean.
  ///
  /// Returns `true` if this integer is greater than *0*.
  bool get asBool => this > 0;

  /// Returns tenth of the number
  ///
  double get tenth => this / 10;

  /// Returns fourth of the number
  ///
  double get fourth => this / 4;

  /// Returns third of the number
  ///
  double get third => this / 3;

  /// Returns half of the number
  ///
  double get half => this / 2;

  /// Return this number time two
  ///
  int get doubled => this * 2;

  /// Return this number time three
  ///
  int get tripled => this * 3;
}
