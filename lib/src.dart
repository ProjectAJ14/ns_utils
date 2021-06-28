library ns_utils;

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
export 'services/shared_preferences/sp_service.dart';

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
export 'utils/sizes.dart';
export 'widgets/spacers.dart';

class NSUtils {
  bool _printLogs = false;

  bool get printLogs => _printLogs;

  static NSUtils instance = NSUtils();

  Future<Null> init({
    @required bool printLogs,
  }) async {
    _printLogs = printLogs;
    await SPService.init();
  }
}
