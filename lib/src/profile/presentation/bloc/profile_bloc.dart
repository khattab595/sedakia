import 'dart:io';

import 'package:app/src/profile/domain/repositories/profile_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/bloc/base_cubit.dart';
import '../../../../core/utils/helper_methods.dart';
import '../../data/models/edit_profile_params.dart';

@Injectable()
class ProfileBloc extends BaseCubit {
  final ProfileRepo repo;

  ProfileBloc(this.repo);

  void fetchProfileData({bool isFromCash = true}) {
    executeSuccess(() => repo.fetchProfileData(isFromCash));
  }

  void editProfileData(EditProfileParams params) {
    executeEmitterListener(() => repo.editProfileData(params));
  }
  void editProfileImage(File params) {
    // executeEmitterListener(() => usecase.editProfileData(params));
  }

  void deleteProfileData() {
    executeSuccessState(() => repo.deleteProfileData(),
        onSuccess: (data) async {
      await HelperMethods.clearCashData();
    });
  }
}
