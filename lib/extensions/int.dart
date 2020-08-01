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
}
