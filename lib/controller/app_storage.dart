import 'package:shared_preferences/shared_preferences.dart';

class AppStorage {
  static savePref(String key, String valeue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, valeue);
  }

  static getPref(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  static saveBool(String key, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  static getBool(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }
}
