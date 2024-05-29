import '../../../../core/widgets/texts/hint_texts.dart';
import '../../../../core/widgets/texts/primary_texts.dart';
import '../../../../core/widgets/texts/row_icon_text.dart';
import '../../../main_index.dart';
import '../../../request_log/presentation/add_request/widgets/filter_date_widget.dart';
import '../widgets/attendance_record_item.dart';

class AttendanceRecordScreen extends BaseStatelessWidget {
  //final List<Course> courses;

  AttendanceRecordScreen({
    Key? key,
    //   required this.courses
  }) : super(key: key);
  TextEditingController controller = TextEditingController();
  int month = DateTime.now().month;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setSate) {
      return Column(
        children: [
          FilterDate(
            value: month,
            onFilter: (v) {
              month = v;
              setSate(() {});
            },
            controller: controller,
          ),
          10.ph,
          Expanded(
            child: ListView.builder(
              controller: ScrollController(),
              itemCount: 30,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                // final course = courses[index];
                return AttendanceRecordItem(
                  month: month,
                  index: index,
                );
              },
            ),
          ),
        ],
      );
    });
  }
}
