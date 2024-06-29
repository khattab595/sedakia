import 'package:app/core/utils/date_formatter.dart';
import 'package:app/src/attendance_record/data/model/attendance_record_dto.dart';
import 'package:app/src/profile/presentation/bloc/profile_bloc.dart';

import '../../../../core/components/base_widget_bloc.dart';
import '../../../../core/widgets/pagination/pagination_widget.dart';
import '../../../main_index.dart';
import '../../../request_log/presentation/add_request/widgets/filter_date_widget.dart';
import '../../data/model/attendance_record_prams.dart';
import '../bloc/attendance_record_bloc.dart';
import 'attendance_record_screen.dart';

class AttendanceRecordPage extends BaseBlocWidget<
    DataSuccess<List<AttendanceRecordDto>>, AttendanceRecordCubit> {
  AttendanceRecordPage({Key? key}) : super(key: key);
  AttendanceRecordPrams params = AttendanceRecordPrams();
  int status = 0;
  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchAttendanceRecord();
  }

  TextEditingController controller = TextEditingController(
      text: DateFormatter.formatString(
    DateTime.now().toString(),
    format: DateFormatter.DATE_FORMAT_MOUNTH,
  ));
  int month = DateTime.now().month;
  @override
  Widget build(BuildContext context) {
    return mainFrame(
      body: Column(
        children: [
          FilterDate(
            value: month,
            onFilterMonth: (data) => bloc.fetchAttendanceRecord(
                params: AttendanceRecordPrams(month: data)),
            onFilterYears: (data) => bloc.fetchAttendanceRecord(
                params: AttendanceRecordPrams(year: data)),
            controller: controller,
          ),
          10.ph,
          Expanded(child: buildConsumer(context)),
        ],
      ),
    );
  }

  @override
  Widget buildWidget(
      BuildContext context, DataSuccess<List<AttendanceRecordDto>> state) {
    return PaginationWidget(
      refreshController: bloc.refreshController,
      onLoading: () {
        bloc.fetchAttendanceRecord(isRefresh: false, params: params);
      },
      onRefresh: () {
        onClickReload();
      },
      child: StreamBuilder<List<AttendanceRecordDto>>(
          stream: bloc.searchAttendanceRecord.stream,
          builder: (context, snapshot) {
            return snapshot.data == null
                ? const SizedBox()
                : AttendanceRecordScreen(
                    data: snapshot.data!,
                    onFilterMonth: (data) => bloc.fetchAttendanceRecord(
                        params: AttendanceRecordPrams(month: data)),
                    onFilterYears: (data) => bloc.fetchAttendanceRecord(
                        params: AttendanceRecordPrams(year: data)),
                  );
          }),
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.attendance;
    //  return getArguments(context).name;
  }
}
