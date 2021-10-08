library ns_utils;

import 'services/shared_preferences/sp_service.dart';

export 'data_type/stackx.dart';
export 'extensions/context.dart';
export 'extensions/date_time.dart';
export 'extensions/double.dart';
export 'extensions/duration.dart';
export 'extensions/functions.dart';
export 'extensions/int.dart';
export 'extensions/list.dart';
export 'extensions/map.dart';
export 'extensions/string.dart';
export 'extensions/widgets/gesture_detector.dart';
export 'extensions/widgets/widgets.dart';
export 'methods/conversion.dart';

export 'services/shared_preferences/sp_service.dart';
export 'utils/sizes.dart';
export 'widgets/spacers.dart';

typedef LogCallBack = void Function(
  dynamic message, {
  String atomLogType,
});

typedef ErrorLogCallBack = void Function(
  dynamic message, [
  dynamic error,
  StackTrace stackTrace,
]);

void _appLogs(
  dynamic message, {
  String atomLogType = "",
}) {}

void errorLogs(dynamic message, [dynamic error, StackTrace? stackTrace]) {}

LogCallBack appLogsNS = _appLogs;
ErrorLogCallBack errorLogsNS = errorLogs;

class NSUtils {
  static NSUtils instance = NSUtils();

  Future<Null> init({
    LogCallBack? appLogsFunction,
    ErrorLogCallBack? errorLogsFunction,
  }) async {
    if (appLogsFunction != null) {
      appLogsNS = appLogsFunction;
    }
    if (errorLogsFunction != null) {
      errorLogsNS = errorLogsFunction;
    }
    await SPService.init();
  }
}
