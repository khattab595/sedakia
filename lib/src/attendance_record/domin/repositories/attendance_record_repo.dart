import '../../../../core/network/api_response.dart';
import '../../data/model/attendance_record_dto.dart';
import '../../data/model/attendance_record_prams.dart';

abstract class AttendanceRecordRepo {
  Future<ApiResponse<List<AttendanceRecordDto>>> fetchAttendanceRecord(
      {required AttendanceRecordPrams attendanceRecordPrams});
}
