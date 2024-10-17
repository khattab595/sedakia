import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
 import '../../../../core/utils/constants.dart';

part 'product_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  ProductDatasource{

  @factoryMethod
  factory ProductDatasource(Dio dio) = _ProductDatasource;

  // @GET('/v1/home')
  // Future<ApiResponse<HomeDataDto>> fetchHomeData();

}