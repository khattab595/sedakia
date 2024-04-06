import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/base_cubit.dart';
import '../../../domain/use_cases/settings_usecase.dart';

@Injectable()
class SupportCubit extends BaseCubit {
  final SettingsUseCase usecase;

  SupportCubit(this.usecase);

  void addSupport() async {
    // executeEmitterListener(() => usecase.addSupport(params));
  }

}
