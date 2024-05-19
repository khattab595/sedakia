
import '../../../request_log/domain/entities/course.dart';

abstract class AttendanceRecordRepo {
  Future<List<Course>> fetchAttendanceRecord();
}