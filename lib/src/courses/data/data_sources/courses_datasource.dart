import 'package:app/src/courses/presentation/details/widgets/custom_lesson_item.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/core/network/api_response.dart';
import 'package:app/core/utils/constants.dart';
import '../../domain/entities/course_details.dart';
import '../models/attending_lesson_params.dart';
import '../models/course_details_dto.dart';
import '../models/course_dto.dart';
import '../models/course_subscription_params.dart';
part 'courses_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  CoursesDatasource{

  @factoryMethod
  factory CoursesDatasource(Dio dio) = _CoursesDatasource;

  @GET('/MyCourses')
  Future<ApiResponse<List<CourseDto>>> fetchMyCourses();


  @GET('/CourseDetails?course_id={id}')
  Future<ApiResponse<CourseDetailsDto>> fetchCourseDetailsData(@Path('id') int id);

  @GET('/UserAttachSubject')
  Future<ApiResponse<LessonDto>> fetchLessonDetails(@Query('subject_id') int id);

  @POST('/CourseSubscription')
  Future<ApiResponse> subscribeCourse(@Queries() CourseSubscriptionParams params);


  @POST('/AttendingMin')
  Future<ApiResponse> attendingMin(@Queries() AttendingLessonParams params);

}