import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/core/network/api_response.dart';
import 'package:app/core/utils/constants.dart';

import '../models/filter_params.dart';
import '../models/product_details_dto.dart';
import '../models/product_dto.dart';

part 'products_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  ProductsDatasource{

  @factoryMethod
  factory ProductsDatasource(Dio dio) = _ProductsDatasource;

  @GET('/app/product/list/{type}')
  Future<ApiResponse<List<ProductDto>>> fetchProductsByType(@Path('type') String type);

  @GET('/app/product/get_all_in_stock')
  Future<ApiResponse<List<ProductDto>>> fetchProductsBySearch(@Queries() FilterParams filterParams);

  @GET('/app/product/view/{id}')
  Future<ApiResponse<ProductDetailsDto>> fetchProductDetails(@Path('id') int id);


}