import 'package:notepad_online/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageRepo {
  LocalStorageRepo._();
  static final LocalStorageRepo _instance = LocalStorageRepo._();
  factory LocalStorageRepo() => _instance;

  SharedPreferences? _preferences;
  Future<void> load() async {
    _preferences ??= await SharedPreferences.getInstance();
  }

  String? get token => _preferences!.getString(tokenKey);

  Future<void> setToken(String token) async {
    _preferences ?? await load();
    await _preferences!.setString(tokenKey, token);
  }

  Future<String?> getToken() async {
    _preferences ?? await load();

    return _preferences!.getString(tokenKey);
  }
}
