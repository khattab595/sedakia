import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
 import '../../../../core/utils/constants.dart';

part 'customers_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  CustomersDatasource{

  @factoryMethod
  factory CustomersDatasource(Dio dio) = _CustomersDatasource;

  // @GET('/v1/home')
  // Future<ApiResponse<HomeDataDto>> fetchHomeData();

}