import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/core/network/api_response.dart';
import 'package:app/core/utils/constants.dart';
import '../models/my_courses_dto.dart';
part 'my_courses_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  MyCoursesDatasource{

  @factoryMethod
  factory MyCoursesDatasource(Dio dio) = _MyCoursesDatasource;

  @GET('/MyCourses')
  Future<ApiResponse<List<MyCoursesDto>>> fetchMyCourses();
}