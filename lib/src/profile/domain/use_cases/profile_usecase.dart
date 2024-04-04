import 'package:app/core/utils/helper_methods.dart';
import 'package:injectable/injectable.dart';

import '../../../stores/data/models/add_store_params.dart';
import '../../data/models/change_password_params.dart';
import '../../data/models/edit_profile_params.dart';
import '../../data/models/profile_dto.dart';
import '../entities/profile.dart';
import '../repositories/base_profile_repo.dart';



@Injectable()
class ProfileUseCase {
  final BaseProfileRepo repository ;
  ProfileUseCase(this.repository);

  Future<Profile> fetchProfileData(bool isFromCash) async {
    ProfileDto profile = ProfileDto();
    if (isFromCash) {
      profile = await HelperMethods.getProfile();
    } else {
      profile = await repository.fetchProfileData();
      await HelperMethods.saveProfile(profile);
    }
    return Profile.fromJson(profile);
  }

  Future<Profile> editProfileData(EditProfileParams params) async {
    final response = await repository.editProfileData(params);
    await HelperMethods.saveProfile(response);
    return Profile.fromJson(response);
  }

  Future<String> deleteProfileData() async {
    final response = await repository.deleteProfileData();
    return response;
  }

  Future<String> addStore(AddStoreParams params) async {
    return await repository.addStore(params);
  }

  Future<String> editStore(StoreDto store) async {
    final response = await repository.editStore(store);
    return response;
  }

  Future<String> deleteStore(int id) async {
    return await repository.deleteStore(id);
  }

  Future<String> changePassword(ChangePasswordParams params) async {
    final response = await repository.changePassword(params);
    return response;
  }

}