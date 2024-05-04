import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/utils/constants.dart';
import '../../../courses/data/models/course_dto.dart';

part 'favorite_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class FavoriteDatasource{

  @factoryMethod
  factory FavoriteDatasource(Dio dio) = _FavoriteDatasource;


  @GET('/myFavoriteCourses')
  Future<ApiResponse<List<CourseDto>>> fetchFavoriteData();

 @POST('/addToFavorites')
  Future<ApiResponse> addFavorite(
     @Query('course_id') int id);

 @POST('/removeFromFavorites')
  Future<ApiResponse> removeFavorite(
     @Query('course_id') int id);


}