
import 'package:injectable/injectable.dart';

import '../../domain/repositories/base_profile_repo.dart';
import '../data_sources/profile_datasource.dart';
import '../../../stores/data/models/add_store_params.dart';
import '../models/change_password_params.dart';
import '../models/edit_profile_params.dart';
import '../models/profile_dto.dart';


@Injectable(as: BaseProfileRepo)
class ProfileRepo extends BaseProfileRepo{
  final ProfileDataSource  apiProvider;
  ProfileRepo(this.apiProvider);

  @override
  Future<ProfileDto> fetchProfileData() async {
    final response = await apiProvider.fetchProfileData();
    return response.data!;
  }

  @override
  Future<ProfileDto> editProfileData(EditProfileParams params) async {
    final response = await apiProvider.editProfileData(params);
    return response.data!;
  }

  @override
  Future<String> deleteProfileData() async {
    final response = await apiProvider.deleteProfileData();
    return response.data!;
  }

  @override
  Future<String> changePassword(ChangePasswordParams params) async {
    final response = await apiProvider.changePassword(params);
    return response.message ?? '';
  }

  @override
  Future<String> addStore(AddStoreParams params) async {
    final response = await apiProvider.addStore(params);
    return response.message ?? '';
  }

  @override
  Future<String> editStore(StoreDto store) async {
    final response = await apiProvider.editStore(store);
    return response.message ?? '';
  }

  @override
  Future<String> deleteStore(int id) async {
    final response = await apiProvider.deleteStore(id);
    return response.message ?? '';
  }

}