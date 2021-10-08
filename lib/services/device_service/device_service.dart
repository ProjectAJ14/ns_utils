import 'package:flutter/services.dart';

class DeviceService {
  DeviceService._();

  static Future<Null> setOrientationToPortrait() async {
    await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
