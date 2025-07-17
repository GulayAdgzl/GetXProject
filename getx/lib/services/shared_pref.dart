import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref extends GetxService {
  late SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<void> saveData(String key, String value) async {
    await _prefs.setString(key, value);
  }

  Future<String?> getData(String key) async {
    return _prefs.getString(key);
  }
}
