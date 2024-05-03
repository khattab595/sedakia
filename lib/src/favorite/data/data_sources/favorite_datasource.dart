import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/utils/constants.dart';
import '../../../my_courses/data/models/course_dto.dart';

part 'favorite_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class FavoriteDatasource{

  @factoryMethod
  factory FavoriteDatasource(Dio dio) = _FavoriteDatasource;


  @GET('/myFavoriteCourses')
  Future<ApiResponse<List<CourseDto>>> fetchFavoriteData();

 @POST('/addToFavorites?course_id={id}')
  Future<ApiResponse> addFavorite(
     @Path('id') int id);

 @POST('/removeFromFavorites?course_id={id}')
  Future<ApiResponse> removeFavorite(
     @Path('id') int id);


}