import 'package:injectable/injectable.dart';
import 'package:app/src/settings/data/data_sources/settings_datasource.dart';
import '../../domain/repositories/settings_repo.dart';
import '../models/setting_dto.dart';

@Injectable(as: SettingsRepo)
class SettingsRepoImp extends SettingsRepo {
  final SettingsDatasource apiProvider;
  SettingsRepoImp(this.apiProvider);

  @override
  Future<SettingDto> fetchSetting() async {
    final response = await apiProvider.fetchSetting();
    return response.payload!;
  }
}
