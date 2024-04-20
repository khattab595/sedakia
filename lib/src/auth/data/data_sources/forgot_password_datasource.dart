import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/core/network/api_response.dart';

import '../../../../core/utils/constants.dart';
import '../models/change_password_params.dart';
import '../models/forgot_password_params.dart';

part 'forgot_password_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  ForgotPasswordDataSource{

  @factoryMethod
  factory ForgotPasswordDataSource(Dio dio) = _ForgotPasswordDataSource;

  @POST('/v1/updatePassword')
  Future<ApiResponse> enterPhoneNumber(@Body() String phoneNumber);

  @GET('/api/v1/Operations/GetAllOperations')
  Future<ApiResponse> enterCode(@Body() String code);

  @GET('/v1/updatePassword')
  Future<ApiResponse> forgotPassword(@Body() ForgotPasswordParams params);

  @GET('/v1/updatePassword')
  Future<ApiResponse> updatePassword(@Body() ChangePasswordParams params);
}