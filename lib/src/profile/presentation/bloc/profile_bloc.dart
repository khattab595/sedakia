import 'dart:io';

import 'package:app/src/profile/domain/repositories/profile_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/bloc/base_cubit.dart';
import '../../../../core/commen/common_state.dart';
import '../../../../core/widgets/drop_down/drop_down.dart';
import '../../../auth/domain/repositories/auth_repo.dart';
import '../../data/models/profile_dto.dart';

@Injectable()
class ProfileBloc extends BaseCubit {
  final ProfileRepo repo;
  final AuthRepo authRepo;

  ProfileBloc(this.repo, this.authRepo);

  void fetchProfileData({bool isFromCash = true}) {
    executeSuccess(() => repo.fetchProfileData(isFromCash));
  }

  void editProfileData(ProfileDto params) {
    executeEmitterListener(() => repo.editProfileData(params));
  }

  void editProfileImage(File file) {
    executeEmitterListener(() => repo.changeImage(file));
  }

  void deleteProfileData() {
    executeSuccessState(() => repo.logout());
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
}
