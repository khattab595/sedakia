import 'dart:io';

import 'package:app/core/utils/helper_methods.dart';
import 'package:app/src/profile/domain/repositories/profile_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/bloc/base_cubit.dart';
import '../../../../core/commen/common_state.dart';
import '../../../../core/resources/data_state.dart';
import '../../../../core/widgets/drop_down/drop_down.dart';
import '../../../auth/data/repositories/forgot_password_repo_imp.dart';
import '../../../auth/domain/repositories/auth_repo.dart';
import '../../../auth/domain/repositories/forgot_password_repo.dart';
import '../../data/models/profile_dto.dart';

@Injectable()
class ProfileBloc extends BaseCubit {
  final ProfileRepo repo;
  final AuthRepo authRepo;
  final ForgotPasswordRepo forgotPasswordRepo;

  ProfileBloc(this.repo, this.authRepo, this.forgotPasswordRepo);

  void fetchProfileData({bool isFromCash = false}) {
    executeSuccess(() => repo.fetchProfileData(isFromCash));
  }

  Future<void> fetchEditProfileData({bool isFromCash = false}) async {
    try {
      emit(DataLoading());
      final response1 = await repo.fetchProfileData(isFromCash);
      final response2 = await authRepo.fetchAcademicLevels();
      emit(DoubleDataSuccess(data1: response1, data2: response2));
    } catch (e) {
      emit(DataFailed(e));
    }
  }

  void editProfileData(ProfileDto params) {
    executeEmitterListener(() => repo.editProfileData(params));
  }

  void logOut() {
    executeEmitterListener(
      () => forgotPasswordRepo.logout(),
    );
  }

  void editProfileImage(File file) {
    executeSuccessNoActionState(() => repo.editProfileImage(file),
        onSuccess: (response) {
      fetchProfileData(isFromCash: false);
    });
  }


  StreamStateInitial<List<DropDownItem>?> stageLevelsStream =
      StreamStateInitial();

  void fetchAcademicLevels() {
    executeSuccess(() => authRepo.fetchAcademicLevels());
  }

  void fetchStageLevels(String academicLevelId) async {
    stageLevelsStream.setData(null);
    try {
      stageLevelsStream
          .setData(await authRepo.fetchStageLevels(academicLevelId));
    } catch (e) {
      stageLevelsStream.setError(e);
    }
  }

  void lunchSupport() {
    executeSuccessNoActionState(() => repo.fetchCommunicationData(),
        onSuccess: (response) {
      HelperMethods.launchTelegram(response.Telegram ?? '');
    });
  }
}
