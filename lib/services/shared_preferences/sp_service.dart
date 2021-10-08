// Package imports:
import 'package:shared_preferences/shared_preferences.dart';

import '../../src.dart';

class SPService {
  final String _tag = 'SPService';

  static late SharedPreferences instance;

  static Future<Null> init() async {
    appLogsNS('$SPService init');
    instance = await SharedPreferences.getInstance();
  }

  static void clear() {
    instance.clear();
  }

  void log() {
    appLogsNS('$_tag $instance');
  }
}
