import 'package:get_storage/get_storage.dart';

class KStorageKeys {

  static const String lastRed = 'lastRed';

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





  get erase async => await _storage.erase();



  int? get getLastRed => _storage.read(KStorageKeys.lastRed);
  setLastRed(int? token) =>
      _storage.write(KStorageKeys.lastRed, token);







}
