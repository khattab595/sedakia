import 'package:injectable/injectable.dart';
import '../entities/Setting_model.dart';
import '../repositories/settings_repo.dart';

@Injectable()
class SettingsUseCase {
  final SettingsRepo settingsRepo;

  SettingsUseCase(this.settingsRepo);

  Future<SettingModel> fetchSetting() async {
    final result = await settingsRepo.fetchSetting();
    final data = SettingModel.fromDto(result);
    return data;
  }
}
