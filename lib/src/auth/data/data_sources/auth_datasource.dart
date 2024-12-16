import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/core/utils/constants.dart';
import 'package:app/src/auth/data/models/login_params.dart';
import 'package:app/core/network/api_response.dart';

import '../../../more/data/models/profile_dto.dart';
import '../models/academic_level_dto.dart';
import '../models/login_dto.dart';
import '../models/register_params.dart';
import '../models/verification_code_params.dart';

part 'auth_datasource.g.dart';

@Injectable()
@RestApi(baseUrl: baseUrlLogin)
abstract class AuthDataSource {
  @factoryMethod
  factory AuthDataSource(Dio dio) = _AuthDataSource;

  @POST('v1/token')
  Future<ApiResponse<LoginDto>> login(@Body() LoginParams params);


}
