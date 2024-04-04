import 'package:injectable/injectable.dart';

import '../../../../core/bloc/base_cubit.dart';
import '../../../../core/utils/helper_methods.dart';
import '../../../qayds/data/models/add_store_params.dart';
import '../../data/models/change_password_params.dart';
import '../../data/models/edit_profile_params.dart';
import '../../data/models/profile_dto.dart';
import '../../domain/use_cases/profile_usecase.dart';

@Injectable()
class ProfileBloc extends BaseCubit {
  final ProfileUseCase usecase;

  ProfileBloc(this.usecase);

  void fetchProfileData({bool isFromCash = false}) {
    executeSuccess(() => usecase.fetchProfileData(isFromCash));
  }

  void editProfileData(EditProfileParams params) {
    executeEmitterListener(() => usecase.editProfileData(params));
  }

  void deleteProfileData() {
    executeSuccessState(() => usecase.deleteProfileData(),
        onSuccess: (data) async {
      await HelperMethods.clearCashData();
    });
  }

  void addStore(AddStoreParams params) {
    executeEmitterListener(() => usecase.addStore(params));
  }

  void editStore(StoreDto store) async {
    executeEmitterListener(() => usecase.editStore(store));
  }

  void deleteStore(int id) async {
    executeEmitterListener(() => usecase.deleteStore(id));
  }

  void changePassword(ChangePasswordParams params) async {
    executeEmitterListener(() => usecase.changePassword(params));
  }
}
