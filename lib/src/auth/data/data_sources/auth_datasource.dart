import 'package:app/src/profile/data/models/profile_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/core/utils/constants.dart';
import 'package:app/src/auth/data/models/login_params.dart';
import 'package:app/core/network/api_response.dart';

import '../models/register_params.dart';

part 'auth_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  AuthDataSource{

  @factoryMethod
  factory AuthDataSource(Dio dio) = _AuthDataSource;

  @POST('/v1/login')
  Future<ApiResponse<ProfileDto>> login(@Body() LoginParams params);

  @POST('/v1/logout')
  Future<ApiResponse<ProfileDto>> register(@Body() RegisterParams params);
}