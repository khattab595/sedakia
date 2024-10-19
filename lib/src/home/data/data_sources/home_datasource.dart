import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/utils/constants.dart';

part 'home_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  HomeDatasource{

  @factoryMethod
  factory HomeDatasource(Dio dio) = _HomeDatasource;

  // @GET('/v1/home')
  // Future<ApiResponse<HomeDataDto>> fetchHomeData();

}