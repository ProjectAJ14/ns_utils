// Package imports:
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import '../../utils/logs.dart';

class SPService {
  final String _tag = 'SPService';

  static SharedPreferences instance;

  static Future<Null> init() async {
    nsuLogs('$SPService init');
    instance = await SharedPreferences.getInstance();
  }

  static void clear() {
    instance?.clear();
  }

  void log() {
    nsuLogs('$_tag');
  }
}
