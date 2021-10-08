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

late LogCallBack appLogsNS;
late LogCallBack apiLogsNS;
late ErrorLogCallBack errorLogsNS;

class NSUtils {
  static NSUtils instance = NSUtils();

  Future<Null> init({
    required LogCallBack appLogsFunction,
    required LogCallBack apiLogsFunction,
    required ErrorLogCallBack errorLogsFunction,
  }) async {
    appLogsNS = appLogsFunction;
    appLogsNS = apiLogsFunction;
    errorLogsNS = errorLogsFunction;
    await SPService.init();
  }
}
