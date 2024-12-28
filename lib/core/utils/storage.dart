import 'package:get_storage/get_storage.dart';

class KStorageKeys {

  static const String lastRed = 'lastRed';
  static const String time = 'time';
  static const String nameNoti = 'nameNoti';

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

  String? get getTimeNot => _storage.read(KStorageKeys.time);
  setTimeNot(String? token) =>
      _storage.write(KStorageKeys.time, token);

  String? get getNameNot => _storage.read(KStorageKeys.nameNoti);
  setNameNot(String? token) =>
      _storage.write(KStorageKeys.nameNoti, token);







}
