import 'package:injectable/injectable.dart';
import '../../../../core/bloc/base_cubit.dart';
import '../../domain/use_cases/settings_use_cases.dart';

@Injectable()
class AboutCubit extends BaseCubit {
  final SettingsUseCase settingsUseCase;

  AboutCubit(this.settingsUseCase);



  void fetchSetting() {
    executeSuccess(() => settingsUseCase.fetchSetting());
  }

}
