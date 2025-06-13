import 'package:shared_preferences/shared_preferences.dart';

class ShareLocalStorage {

  static late SharedPreferences sharedPrefs;

  Future<void> init() async {
    sharedPrefs = await SharedPreferences.getInstance();
  }

  Future<bool?> setStringData(String key, val) async {
    await sharedPrefs.setString(key, val);
    return true;
  }

  Future<String?> getStringData(String key) async {
    return sharedPrefs.getString(key);
  }

  Future<bool?> isEmptyStringData(String key) async {
    return sharedPrefs.containsKey(key);
  }

  Future<bool?> removeStringData(String key) async {
    await sharedPrefs.remove(key);
    return true;
  }

  Future<bool?> clearAllData() async {
    await sharedPrefs.clear();
    return true;
  }

}