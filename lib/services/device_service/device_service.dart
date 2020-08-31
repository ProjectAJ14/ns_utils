import 'package:flutter/services.dart';

class DeviceService {
  static Future<Null> setOrientationToPortrait() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
