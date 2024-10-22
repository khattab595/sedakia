import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
 import '../../../../core/network/api_response.dart';
import '../../../../core/utils/constants.dart';
import '../models/product_dto.dart';
import '../models/product_params.dart';
import '../models/search_params.dart';

part 'product_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  ProductDatasource{

  @factoryMethod
  factory ProductDatasource(Dio dio) = _ProductDatasource;

  @GET('products-moblie/v1/all-products')
  Future<ApiResponse<ProductDto>> fetchGetProduct(@Queries() SearchParams params);

  @POST('products-moblie/v1/add-product')
  Future<ApiResponse> createProduct(@Body() ProductParams params);


  @POST('products-moblie/v1/delete-product/{id}')
  Future<ApiResponse> deleteProduct(@Path("id") int id);

}