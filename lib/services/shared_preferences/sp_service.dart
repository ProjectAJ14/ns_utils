import 'package:shared_preferences/shared_preferences.dart';

class SPService {
  static SharedPreferences instance;

  static Future<Null> init() async {
    instance = await SharedPreferences.getInstance();
  }

  static void clear() {
    instance?.clear();
  }
}
