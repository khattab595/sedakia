import 'package:get_storage/get_storage.dart';

class KStorageKeys {

  static const String token = 'token';

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





  String? get getToken => _storage.read(KStorageKeys.token);
  setToken(String? token) =>
      _storage.write(KStorageKeys.token, token);


  get erase async => await _storage.erase();


}
