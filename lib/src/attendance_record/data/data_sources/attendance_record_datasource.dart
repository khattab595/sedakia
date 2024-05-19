import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/utils/constants.dart';
import '../../../request_log/data/models/course_dto.dart';

part 'attendance_record_datasource.g.dart';

@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  AttendanceRecordDatasource{

  @factoryMethod
  factory AttendanceRecordDatasource(Dio dio) = _AttendanceRecordDatasource;

  @GET('/departmentCourses')
  Future<ApiResponse<List<CourseDto>>> fetchAttendanceRecord();
}