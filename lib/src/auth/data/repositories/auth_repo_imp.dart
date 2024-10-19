import 'dart:io';

import 'package:app/core/firebase/notification_service.dart';
import 'package:injectable/injectable.dart';
import 'package:app/src/auth/data/models/login_params.dart';

import '../../../../core/utils/helper_methods.dart';
import '../../../../core/widgets/drop_down/drop_down.dart';
import '../../../more/data/models/profile_dto.dart';
import '../../../more/domain/entities/more.dart';
import '../../domain/repositories/auth_repo.dart';
import '../data_sources/auth_datasource.dart';
import '../models/complete_registration_params.dart';
import '../models/login_dto.dart';
import '../models/register_params.dart';
import '../models/verification_code_params.dart';

@Injectable(as: AuthRepo)
class AuthRepoImp extends AuthRepo {
  final AuthDataSource apiProvider;

  AuthRepoImp(this.apiProvider);

  @override
  Future<String> login(LoginParams params) async {
   // params.fcmToken = await FirebaseNotification().getToken();
    final response = await apiProvider.login(params);
   // await HelperMethods.saveProfile(response.data ?? ProfileDto());
    return response.message!;
  }

  @override
  Future<String> register(RegisterParams params) async {
    params.fcmToken = await FirebaseNotification().getToken();
    final response = await apiProvider.register(params);
    await HelperMethods.saveProfile(response.data ?? ProfileDto());
    return response.message ?? '';
  }

  @override
  Future<String> verificationCode(VerificationCodeParams params) async {
    final response = await apiProvider.verificationCode(params);
    await HelperMethods.saveProfile(response.data ?? ProfileDto());
    return response.message ?? '';
  }

  @override
  Future<String> completeRegistration(CompleteRegistrationParams params) async {
    final response = await apiProvider.completeRegistration(
      params.academicLevelId ?? '',
      params.stageLevelId ?? '',
      params.birthDate ?? '',
      params.gender ?? '',
      File(params.picIdentityF ?? ''),
      File(params.picIdentityB ?? ''),
    );
    ProfileDto profileDto = ProfileDto.fromJson(response['user']);
    profileDto.token = response['token'];
    await HelperMethods.saveProfile(profileDto);
    return response['message'];
  }

  @override
  Future<List<DropDownItem>> fetchAcademicLevels() async {
    final response = await apiProvider.fetchAcademicLevels();
    return response.data
            ?.map((e) => DropDownItem(id: e.id.toString(), title: e.name))
            .toList() ??
        [];
  }

  @override
  Future<List<DropDownItem>> fetchStageLevels(String academicLevelId) async {
    return [];
  }
}
