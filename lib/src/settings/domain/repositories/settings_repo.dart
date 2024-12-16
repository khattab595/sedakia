import '../../data/models/setting_dto.dart';

abstract class SettingsRepo {
  Future<SettingDto> fetchSetting();

}
