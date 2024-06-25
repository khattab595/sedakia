import 'package:app/core/utils/date_formatter.dart';
import 'package:app/src/profile/presentation/bloc/profile_bloc.dart';

import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import 'attendance_record_screen.dart';

class AttendanceRecordPage extends BaseBlocWidget<UnInitState, ProfileBloc> {
  AttendanceRecordPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchDepartmentCourses();
  // }
  TextEditingController controller = TextEditingController(
      text: DateFormatter.formatTimestampString(
        DateTime.now().toString(),
          format: DateFormatter.DATE_FORMAT_MOUNTH,
      ));

  @override
  Widget build(BuildContext context) {
    return mainFrame(
      body: Column(
        children: [
          Expanded(child: buildConsumer(context)),
        ],
      ),
    );
  }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return StreamBuilder<Object>(
      stream: null,
      builder: (context, snapshot) {
        return AttendanceRecordScreen(
            // courses: state.data!,
            );
      }
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.attendance;
    //  return getArguments(context).name;
  }
}
