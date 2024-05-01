import 'package:app/src/profile/data/models/profile_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/core/utils/constants.dart';
import 'package:app/src/auth/data/models/login_params.dart';
import 'package:app/core/network/api_response.dart';

import '../models/academic_level_dto.dart';
import '../models/complete_registration_params.dart';
import '../models/register_params.dart';
import '../models/verification_code_params.dart';

part 'auth_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  AuthDataSource{

  @factoryMethod
  factory AuthDataSource(Dio dio) = _AuthDataSource;

  @POST('/login')
  Future<ApiResponse<ProfileDto>> login(@Body() LoginParams params);

  @POST('/register')
  Future<ApiResponse<ProfileDto>> register(@Body() RegisterParams params);

  @POST('/verificationCode')
  Future<ApiResponse<ProfileDto>> verificationCode(@Body() VerificationCodeParams params);

  @POST('/completeRegistration')
  Future<ApiResponse<ProfileDto>> completeRegistration(@Body() CompleteRegistrationParams params);

  @POST('/academicLevels')
  Future<ApiResponse<List<AcademicLevelDto>>> fetchAcademicLevels();

  @POST('/stageLevels')
  Future<ApiResponse<List<AcademicLevelDto>>> fetchStageLevels(@Query('academic_level_id') int academicLevelId);
}