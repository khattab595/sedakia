
import 'package:injectable/injectable.dart';
import 'package:app/src/auth/data/models/login_params.dart';

import '../../../../core/utils/helper_methods.dart';
import '../../../../core/widgets/drop_down/drop_down.dart';
import '../../../profile/data/models/profile_dto.dart';
import '../../../profile/domain/entities/profile.dart';
import '../../domain/repositories/auth_repo.dart';
import '../data_sources/auth_datasource.dart';
import '../models/complete_registration_params.dart';
import '../models/register_params.dart';
import '../models/verification_code_params.dart';

@Injectable(as: AuthRepo)
class AuthRepoImp extends AuthRepo{
  final AuthDataSource  apiProvider;
  AuthRepoImp(this.apiProvider);

  @override
  Future<Profile> login(LoginParams params) async{
    final response = await apiProvider.login(params);
    ProfileDto profileDto = ProfileDto(
      name: response.name,
      token: response.token,
    );
    await HelperMethods.saveProfile(profileDto);
    return Profile.fromJson(profileDto);
  }

  @override
  Future<Profile> register(RegisterParams params) async{
    final response = await apiProvider.register(params);
    await HelperMethods.saveProfile(response.data!);
    return Profile.fromJson(response.data!);
  }

  @override
  Future<Profile> verificationCode(VerificationCodeParams params) async{
    final response = await apiProvider.verificationCode(params);
    await HelperMethods.saveProfile(response.data!);
    return Profile.fromJson(response.data!);
  }

  @override
  Future<Profile> completeRegistration(CompleteRegistrationParams params) async{
    final response = await apiProvider.completeRegistration(params);
    await HelperMethods.saveProfile(response.data!);
    return Profile.fromJson(response.data!);
  }

  @override
  Future<List<DropDownItem>> fetchAcademicLevels() async{
    final response = await apiProvider.fetchAcademicLevels();
    return response.data?.map((e) => DropDownItem(id: e.id.toString(), title: e.name)).toList() ?? [];
  }

  @override
  Future<List<DropDownItem>> fetchStageLevels(int academicLevelId) async{
    final response = await apiProvider.fetchStageLevels(academicLevelId);
    return response.data?.map((e) => DropDownItem(id: e.id.toString(), title: e.name)).toList() ?? [];
  }

}