
import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../request_log/domain/entities/course.dart';
import '../bloc/attendance_record_bloc.dart';
import 'attendance_record_screen.dart';


class DepartmentPage extends BaseBlocWidget<DataSuccess<List<Course>>, AttendanceRecordCubit> {
  DepartmentPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchDepartmentCourses();
  }
  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<Course>> state) {
    return DepartmentScreen(
      courses: state.data!,
    );
  }

  @override
  String? title(BuildContext context) {
    return getArguments(context).name;
  }
}
