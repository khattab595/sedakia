import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/utils/constants.dart';
import '../models/course_details_dto.dart';

part 'course_details_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  CourseDetailsDatasource{

  @factoryMethod
  factory CourseDetailsDatasource(Dio dio) = _CourseDetailsDatasource;

  @GET('/CourseDetails?course_id={id}')
  Future<ApiResponse<CourseDetailsDto>> fetchCourseDetailsData(@Path('id') int id);

@POST('/CourseSubscription?course_id={courseId}&courseCode={courseCode}')
  Future<ApiResponse> subscribeCourse(
    @Path('courseId') int courseId,
    @Path('courseCode') String courseCode,);


  @POST('/AttendingMin?subject_id={id}&attending_min={min}')
  Future<ApiResponse> attendingMin(
      @Path('id') int id,
      @Path('min') int min,);
}