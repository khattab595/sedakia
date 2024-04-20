
import '../../data/models/edit_profile_params.dart';
import '../entities/profile.dart';

abstract class ProfileRepo{
  Future<Profile> fetchProfileData(bool isFromCash);
  Future<String> editProfileData(EditProfileParams params);
  Future<String> changeImage(EditProfileParams params);
  Future<String> deleteProfileData();
  Future<String> logout();
}
