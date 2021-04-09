// Flutter imports:
import 'package:flutter/services.dart';

class DeviceService {
  static Future<Null> setOrientationToPortrait() async {
    await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
