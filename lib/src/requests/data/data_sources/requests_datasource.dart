import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
 import '../../../../core/utils/constants.dart';

part 'requests_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class RequestsDatasource{

  @factoryMethod
  factory RequestsDatasource(Dio dio) = _RequestsDatasource;

  // @GET('/v1/home')
  // Future<ApiResponse<HomeDataDto>> fetchHomeData();

}