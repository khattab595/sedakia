import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/core/utils/constants.dart';
import 'package:app/src/auth/data/models/login_params.dart';
import 'package:app/core/network/api_response.dart';

import '../models/country_dto.dart';
import '../models/register_params.dart';
import '../models/token_dto.dart';

part 'auth_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  AuthDataSource{

  @factoryMethod
  factory AuthDataSource(Dio dio) = _AuthDataSource;

  @POST('/app/user/login')
  Future<ApiResponse<TokenDto>> login(@Body() LoginParams params);

  @POST('/app/user/register')
  Future<ApiResponse<TokenDto>> register(@Body() RegisterParams params);

  @GET('/app/country/list')
  Future<ApiResponse<List<CountryDto>>> fetchCountries();

}