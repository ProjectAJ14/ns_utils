// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const Duration _delayDuration = Duration(milliseconds: 500);

class StatusBarService {
  static Future<Null> hideStatusBar() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: <SystemUiOverlay>[SystemUiOverlay.bottom]);
  }

  Future<Null> showStatusBar() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  static Future<Null> changeStatusColor(
    Color color, {
    bool whiteForeground = true,
  }) async {
    try {
      await Future<void>.delayed(_delayDuration);
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: color,
      ));
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ));
      await Future<void>.delayed(_delayDuration);
    } on PlatformException catch (e) {
      debugPrint('$e');
    }
  }

  static void resetStatusBarColor() {
    SystemChrome.restoreSystemUIOverlays();
  }
}
