import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceRepository {

  static SharedPreferences _localStorage;

  static SharedPreferenceRepository _singleton;

  static Future<SharedPreferenceRepository> getInstance() async {
    if (_singleton == null) {
      var singleton = SharedPreferenceRepository._();
      await singleton._init();
      _singleton = singleton;
    }

    return _singleton;
  }

  Future _init() async {
    _localStorage = await SharedPreferences.getInstance();
  }

    static String getString(String key) {
    if (_localStorage == null) return null;
    var status = _localStorage.getString(key);
    if (status == null) return "";
    return status;
  }

  static Future<bool> putString(String key, String value) {
    if (_localStorage == null) return null;
    return _localStorage.setString(key, value);
  }

  SharedPreferenceRepository._();
}