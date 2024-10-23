import 'dart:io';

import 'package:app/src/categories/data/models/category_params.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/utils/constants.dart';
import '../models/category_dto.dart';

part 'catagory_datasource.g.dart';

@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class CategoriesDatasource {
  @factoryMethod
  factory CategoriesDatasource(Dio dio) = _CategoriesDatasource;

  @GET('categories/mobile/v1/all-categories')
  Future<ApiResponse<CategoryDto>> fetchCategory();

  @MultiPart()
  @POST('categories/mobile/v1/add-category')
  Future<ApiResponse> addCategory(
    @Part(name: 'name') String name,
    @Part(name: 'description') String description,
    @Part(name: 'parent') String parent,
    @Part(name: 'slug') List<String> slug,
    @Part(name: 'image') File image,
  );

  @MultiPart()
  @POST('categories/mobile/v1/update-category/{id}')
  Future<ApiResponse> updateCategory(
      @Path("id") int? id,
      @Part(name: 'name') String? name,
      @Part(name: 'description') String? description,
      @Part(name: 'parent') String? parent,
      @Part(name: 'slug') List<String>? slug,
      {@Part(name: 'image') File? image = null});

  @POST('categories/mobile/v1/delete-category/{id}')
  Future<ApiResponse<CategoryDto>> deleteCategory(@Path("id") int id);
}
