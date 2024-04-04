
import '../../../stores/data/models/add_store_params.dart';
import '../../data/models/change_password_params.dart';
import '../../data/models/edit_profile_params.dart';
import '../../data/models/profile_dto.dart';

abstract class BaseProfileRepo<T>{
  Future<ProfileDto> fetchProfileData();
  Future<ProfileDto> editProfileData(EditProfileParams params);
  Future<String> deleteProfileData();
  Future<String> changePassword(ChangePasswordParams params);
  Future<String> addStore(AddStoreParams params);
  Future<String> editStore(StoreDto store);
  Future<String> deleteStore(int id);
}
