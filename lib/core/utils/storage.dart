import 'package:get_storage/get_storage.dart';

class KStorageKeys {

  static const String token = 'token';
  static const String baseUrl = 'baseUrl';

}

class KStorage {
  static final GetStorage _storage = GetStorage();

  static KStorage? _i;

  KStorage._internal() {
    _i = this;
  }
  static KStorage get i {
    return _i ?? KStorage._internal();
  }


  String? get getBaseUrl => _storage.read(KStorageKeys.baseUrl);
  setBaseUrl(String? baseUrl) =>
      _storage.write(KStorageKeys.baseUrl, baseUrl);


  get erase async => await _storage.erase();



  String? get getToken => _storage.read(KStorageKeys.token);
  setToken(String? token) =>
      _storage.write(KStorageKeys.token, token);







}
