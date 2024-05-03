import 'package:app/core/commen/common_state.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/base_cubit.dart';
import '../../../../../core/widgets/drop_down/drop_down.dart';
import '../../../data/models/complete_registration_params.dart';
import '../../../domain/repositories/auth_repo.dart';

@Injectable()
class CompleteRegisterCubit extends BaseCubit {
  final AuthRepo repo;

  CompleteRegisterCubit(this.repo);

  StreamStateInitial<List<DropDownItem>?> stageLevelsStream =
      StreamStateInitial();

  void fetchAcademicLevels() {
    executeSuccess(() => repo.fetchAcademicLevels());
  }

  void fetchStageLevels(String academicLevelId) async {
    stageLevelsStream.setData(null);
    try {
      stageLevelsStream.setData(await repo.fetchStageLevels(academicLevelId));
    } catch (e) {
      stageLevelsStream.setError(e);
    }
  }

  void completeRegistration(CompleteRegistrationParams params) async {
    executeSuccessState(() => repo.completeRegistration(params));
  }
}
