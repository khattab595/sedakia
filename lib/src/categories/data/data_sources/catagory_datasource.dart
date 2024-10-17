import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
 import '../../../../core/utils/constants.dart';

part 'catagory_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  CategoriesDatasource{

  @factoryMethod
  factory CategoriesDatasource(Dio dio) = _CategoriesDatasource;

  // @GET('/v1/home')
  // Future<ApiResponse<HomeDataDto>> fetchHomeData();

}