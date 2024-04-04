import 'package:app/core/utils/constants.dart';
import 'package:app/src/products/data/models/product_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/core/network/api_response.dart';

import '../../domain/entities/category.dart';
import '../models/category_dto.dart';

part 'categories_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  CategoriesDatasource{

  @factoryMethod
  factory CategoriesDatasource(Dio dio) = _CategoriesDatasource;

  @GET('/app/category/list')
  Future<ApiResponse<List<CategoryDto>>> fetchCategories();

  @GET('/app/product/list/category/{id}')
  Future<ApiResponse<List<ProductDto>>> fetchCategoryProduct(@Path('id') int id, @Query('page') int page);

}