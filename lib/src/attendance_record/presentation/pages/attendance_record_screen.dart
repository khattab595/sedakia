import '../../../../core/widgets/texts/hint_texts.dart';
import '../../../../core/widgets/texts/primary_texts.dart';
import '../../../../core/widgets/texts/row_icon_text.dart';
import '../../../main_index.dart';
import '../../../request_log/presentation/add_request/widgets/filter_date_widget.dart';
import '../../data/model/attendance_record_dto.dart';
import '../widgets/attendance_record_item.dart';

class AttendanceRecordScreen extends BaseStatelessWidget {
   final List<AttendanceRecordDto>  data;
   final Function(String data) onFilterYears;
   final Function(String data) onFilterMonth;
  AttendanceRecordScreen( {
    Key? key,
       required this.data,
    required this.onFilterYears, required this.onFilterMonth,
  }) : super(key: key);
  TextEditingController controller = TextEditingController();
  int month = DateTime.now().month;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: ScrollController(),
      itemCount: data.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {

        return AttendanceRecordItem(

        data:data[index]
        );
      },
    );
  }
}
