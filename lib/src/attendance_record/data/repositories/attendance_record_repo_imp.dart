import 'package:app/core/network/api_response.dart';
import 'package:injectable/injectable.dart';
import '../../domin/repositories/attendance_record_repo.dart';
import '../data_sources/attendance_record_datasource.dart';
import '../model/attendance_record_dto.dart';
import '../model/attendance_record_prams.dart';

@Injectable(as: AttendanceRecordRepo)
class AttendanceRecordRepoImp extends AttendanceRecordRepo{
  final AttendanceRecordDatasource  datasource;
  AttendanceRecordRepoImp(this.datasource);



  @override
  Future<ApiResponse<List<AttendanceRecordDto>>> fetchAttendanceRecord({required AttendanceRecordPrams attendanceRecordPrams}) async{
    final response =  await datasource.fetchAttendanceRecord(attendanceRecordPrams);
    return response;
  }

}