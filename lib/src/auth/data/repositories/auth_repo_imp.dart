
import 'package:injectable/injectable.dart';
import 'package:app/src/auth/data/models/login_params.dart';

import '../../../../core/utils/helper_methods.dart';
import '../../../profile/data/models/profile_dto.dart';
import '../../../profile/domain/entities/profile.dart';
import '../../domain/repositories/auth_repo.dart';
import '../data_sources/auth_datasource.dart';
import '../models/register_params.dart';

@Injectable(as: AuthRepo)
class AuthRepoImp extends AuthRepo{
  final AuthDataSource  apiProvider;
  AuthRepoImp(this.apiProvider);

  @override
  Future<Profile> login(LoginParams params) async{
    final response = await apiProvider.login(params);
    ProfileDto profileDto = ProfileDto(
      name: response.name,
      email: response.token,
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

}