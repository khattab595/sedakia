
import 'package:injectable/injectable.dart';

import '../../../../core/utils/helper_methods.dart';
import '../../domain/entities/profile.dart';
import '../../domain/repositories/profile_repo.dart';
import '../data_sources/profile_datasource.dart';
import '../models/edit_profile_params.dart';
import '../models/profile_dto.dart';


@Injectable(as: ProfileRepo)
class ProfileRepoImp extends ProfileRepo{
  final ProfileDataSource  apiProvider;
  ProfileRepoImp(this.apiProvider);


  @override
  Future<Profile> fetchProfileData(bool isFromCash) async {
    ProfileDto profile = ProfileDto();
    if (isFromCash) {
      profile = await HelperMethods.getProfile();
    } else {
      final data = await apiProvider.fetchProfileData();
      profile = data.data!;
      await HelperMethods.saveProfile(profile);
    }
    return Profile.fromJson(profile);
  }

  @override
  Future<String> editProfileData(EditProfileParams params) async {
    final data = await apiProvider.editProfileData(params);
    await HelperMethods.saveProfile(data.data!);
    return data.message ?? '';
  }

  @override
  Future<String> changeImage(EditProfileParams params) async {
    final data = await apiProvider.changeImage(params.image!);
    await HelperMethods.saveProfile(data.data!);
    return data.message ?? '';
  }

  @override
  Future<String> deleteProfileData() async {
    final response = await apiProvider.deleteProfileData();
    return response.message ?? '';
  }

  @override
  Future<String> logout() async {
    final response = await HelperMethods.clearCashData();
    return '';
  }

}