import 'package:injectable/injectable.dart';
import '../../domin/repositories/attendance_record_repo.dart';
import '../data_sources/attendance_record_datasource.dart';

@Injectable(as: AttendanceRecordRepo)
class AttendanceRecordRepoImp extends AttendanceRecordRepo{
  final AttendanceRecordDatasource  datasource;
  AttendanceRecordRepoImp(this.datasource);



  @override
  Future<List<String>> fetchAttendanceRecord() async{
    final response =  await datasource.fetchAttendanceRecord();
    return [];
  }

}