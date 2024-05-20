import '../../../main_index.dart';
import '../../../request_log/domain/entities/course.dart';
import '../widgets/attendance_record_item.dart';

class AttendanceRecordScreen extends BaseStatelessWidget {
  final List<Course> courses;

  AttendanceRecordScreen({Key? key, required this.courses})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: 16.paddingAll,
      itemCount: courses.length,
      itemBuilder: (context, index) {
        final course = courses[index];
        return AttendanceRecordItem(item: course);
      },
    );
  }
}
