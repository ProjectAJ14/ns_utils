import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

// Package imports:
const Duration _delayDuration = Duration(milliseconds: 500);

class StatusBarService {
  StatusBarService._();

  static Future<Null> hideStatusBar() async {
    if (!kIsWeb) {
      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: <SystemUiOverlay>[SystemUiOverlay.bottom]);
    }
  }

  static Future<Null> showStatusBar() async {
    if (!kIsWeb) {
      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: SystemUiOverlay.values);
    }
  }

  static Future<Null> changeStatusColor(
    Color color, {
    bool whiteForeground = true,
  }) async {
    try {
      if (!kIsWeb) {
        await Future<void>.delayed(_delayDuration);
        await FlutterStatusbarcolor.setStatusBarColor(color, animate: true);
        await Future<void>.delayed(_delayDuration);
        await FlutterStatusbarcolor.setStatusBarWhiteForeground(
            whiteForeground);
      }
    } on PlatformException catch (e) {
      debugPrint('$e');
    }
  }

  static void resetStatusBarColor() {
    if (!kIsWeb) {
      SystemChrome.restoreSystemUIOverlays();
    }
  }
}
