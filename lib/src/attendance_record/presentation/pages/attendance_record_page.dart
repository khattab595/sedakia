
import 'package:app/src/profile/presentation/bloc/profile_bloc.dart';

import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../request_log/domain/entities/course.dart';
import '../../../request_log/presentation/add_request/widgets/filter_date_widget.dart';
import '../bloc/attendance_record_bloc.dart';
import 'attendance_record_screen.dart';


class AttendanceRecordPage extends BaseBlocWidget<UnInitState, ProfileBloc> {
  AttendanceRecordPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchDepartmentCourses();
  // }
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return mainFrame(
      body: Column(
        children: [
          25.ph,
          FilterDate(
            onFilter: () {},
            controller: controller,
          ),
          20.ph,
          Expanded(child: buildConsumer(context)),
        ],
      ),
    );
  }
  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return AttendanceRecordScreen(
     // courses: state.data!,
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.attendance;
  //  return getArguments(context).name;
  }
}
