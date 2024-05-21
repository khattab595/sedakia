import '../../../main_index.dart';
import '../../../request_log/domain/entities/course.dart';
import '../../../request_log/presentation/add_request/widgets/filter_date_widget.dart';
import '../widgets/attendance_record_item.dart';

class AttendanceRecordScreen extends BaseStatelessWidget {
  //final List<Course> courses;

  AttendanceRecordScreen({
    Key? key,
    //   required this.courses
  }) : super(key: key);
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: ScrollController(),
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        // final course = courses[index];
        return AttendanceRecordItem(
            //  item: course
            );
      },
    );
  }
}
