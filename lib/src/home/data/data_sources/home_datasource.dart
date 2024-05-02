import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/utils/constants.dart';
import '../../../my_courses/data/models/course_dto.dart';
import '../models/department_dto.dart';
import '../models/slide_dto.dart';
import '../models/teacher_dto.dart';

part 'home_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  HomeDatasource{

  @factoryMethod
  factory HomeDatasource(Dio dio) = _HomeDatasource;

  @GET('/allAdvertisement')
  Future<ApiResponse<List<SlideDto>>> fetchSlides();

  @GET('/recently')
  Future<ApiResponse<CourseDto>> fetchRecentlyData();

  @GET('/departments')
  Future<ApiResponse<List<DepartmentDto>>> fetchDepartmentsData();

  @GET('/recentlyCourses')
  Future<ApiResponse<List<CourseDto>>> fetchRecentlyCoursesData();

  @GET('/teachers')
  Future<ApiResponse<List<TeacherDto>>> fetchTeachersData();


}