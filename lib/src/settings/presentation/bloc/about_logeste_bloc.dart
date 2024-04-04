import 'package:injectable/injectable.dart';
import 'package:app/core/resources/data_state.dart';

import '../../../../core/bloc/base_cubit.dart';
import '../../domain/use_cases/settings_usecase.dart';

@Injectable()
class AboutLogesteCubit extends BaseCubit {
  final SettingsUseCase usecase;

  AboutLogesteCubit(this.usecase);

  fetchAboutLogeste() async {
    try {
      emit(LoadingStateListener());
     final aboutLogeste = await usecase.fetchAboutLogeste();
      emit(DataSuccess<String>(aboutLogeste));
    }  catch (e) {
      emit(FailureStateListener(e));
    }
  }
}
