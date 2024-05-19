import 'package:injectable/injectable.dart';
import '../../../request_log/domain/entities/course.dart';
import '../../domin/repositories/attendance_record_repo.dart';
import '../data_sources/attendance_record_datasource.dart';

@Injectable(as: AttendanceRecordRepo)
class AttendanceRecordRepoImp extends AttendanceRecordRepo{
  final AttendanceRecordDatasource  datasource;
  AttendanceRecordRepoImp(this.datasource);



  @override
  Future<List<Course>> fetchAttendanceRecord() async{
    final response =  await datasource.fetchAttendanceRecord();
    return response.data?.map((e) => Course.fromDto(e)).toList()??[];
  }

}