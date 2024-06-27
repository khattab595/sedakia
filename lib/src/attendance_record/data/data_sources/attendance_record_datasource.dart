import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/utils/constants.dart';
import '../model/attendance_record_dto.dart';
import '../model/attendance_record_prams.dart';

part 'attendance_record_datasource.g.dart';

@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class AttendanceRecordDatasource {
  @factoryMethod
  factory AttendanceRecordDatasource(Dio dio) = _AttendanceRecordDatasource;

  @GET('v1/attendance')
  Future<ApiResponse<List<AttendanceRecordDto>>> fetchAttendanceRecord(
      @Queries() AttendanceRecordPrams attendanceRecordPrams);
}
