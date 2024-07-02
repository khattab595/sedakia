import 'dart:io';

import 'package:app/src/profile/data/models/profile_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/core/utils/constants.dart';
import 'package:app/src/auth/data/models/login_params.dart';
import 'package:app/core/network/api_response.dart';

import '../models/academic_level_dto.dart';
import '../models/register_params.dart';
import '../models/verification_code_params.dart';

part 'auth_datasource.g.dart';

@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class AuthDataSource {
  @factoryMethod
  factory AuthDataSource(Dio dio) = _AuthDataSource;

  @POST('v1/login')
  Future<ApiResponse<ProfileDto>> login(@Body() LoginParams params);

  @POST('/register')
  Future<ApiResponse<ProfileDto>> register(@Body() RegisterParams params);

  @POST('v1/validate_otp')
  Future<ApiResponse> verificationCode(
      @Body() VerificationCodeParams params);

  @MultiPart()
  @POST('/completeRegistration')
  Future completeRegistration(
    @Part(name: 'academic_level_id') String academicLevelId,
    @Part(name: 'stage_level_id') String stageId,
    @Part(name: 'birth_date') String birthDate,
    @Part(name: 'gender') String gender,
    @Part(name: 'pic_identityF') File image,
    @Part(name: 'pic_identityB') File idImage,
  );

  @GET('/academicLevels')
  Future<ApiResponse<List<AcademicLevelDto>>> fetchAcademicLevels();


}
