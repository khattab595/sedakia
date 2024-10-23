import 'dart:io';

import 'package:app/core/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/core/network/api_response.dart';

import '../models/communication_dto.dart';
import '../models/profile_dto.dart';

part 'more_datasource.g.dart';

@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class ProfileDataSource {
  @factoryMethod
  factory ProfileDataSource(Dio dio) = _ProfileDataSource;

  // @GET('v1/viewprofile')
  // Future<ApiResponse<ProfileDto>> fetchProfileData();

  // @POST('/updateProfile')
  // Future<ApiResponse<ProfileDto>> editProfileData(@Body() ProfileDto params,);
}
