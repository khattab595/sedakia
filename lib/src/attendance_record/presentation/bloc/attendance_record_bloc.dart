
import 'package:injectable/injectable.dart';
import '../../../../core/bloc/base_cubit.dart';
import '../../data/repositories/attendance_record_repo_imp.dart';
import '../../domin/repositories/attendance_record_repo.dart';



@Injectable()
class AttendanceRecordCubit extends BaseCubit {
  final AttendanceRecordRepo _repo;

  AttendanceRecordCubit(this._repo);

  fetchDepartmentCourses() async {
    executeSuccess(() => _repo.fetchAttendanceRecord());
  }

}
