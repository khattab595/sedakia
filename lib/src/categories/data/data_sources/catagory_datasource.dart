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
abstract class  CategoriesDatasource{

  @factoryMethod
  factory CategoriesDatasource(Dio dio) = _CategoriesDatasource;

  @GET('categories/mobile/v1/all-categories')
  Future<ApiResponse<CategoryDto>> fetchCategory();


  @POST('categories/mobile/v1/add-category')
  Future<ApiResponse<CategoryDto>> addCategory(@Body() CategoryParams params);


  @POST('categories/mobile/v1/delete-category/{id}')
  Future<ApiResponse<CategoryDto>> deleteCategory(@Path() int id);

}