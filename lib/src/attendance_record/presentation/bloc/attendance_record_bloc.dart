import 'package:app/src/attendance_record/data/model/attendance_record_prams.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/bloc/base_cubit.dart';
import '../../../../core/commen/common_state.dart';
import '../../../../core/exceptions/empty_list_exception.dart';
import '../../../../core/resources/data_state.dart';
import '../../data/model/attendance_record_dto.dart';
import '../../domin/repositories/attendance_record_repo.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

@Injectable()
class AttendanceRecordCubit extends BaseCubit {
  final AttendanceRecordRepo usecase;

  AttendanceRecordCubit(this.usecase);

  StreamStateInitial<List<AttendanceRecordDto>> searchAttendanceRecord =
      StreamStateInitial();
  List<AttendanceRecordDto> allOrigin = [];
  int page = 0;
  bool isLastPage = false;
  AttendanceRecordPrams params = AttendanceRecordPrams(month: DateTime.now().month.toString(), year: DateTime.now().year.toString());
  RefreshController refreshController = RefreshController();

  fetchAttendanceRecord(
      {bool isRefresh = true, AttendanceRecordPrams? params}) async {
    isRefresh ? {page = 1, allOrigin.clear()} : page++;
    this.params = params ?? this.params;
    this.params.page = page;
    executeBuilder(
      isRefresh: isRefresh,
      () => usecase.fetchAttendanceRecord(attendanceRecordPrams: this.params),
      onSuccess: (dto) {
        isLastPage = (dto.pagination?.totalPages ?? 1) == page;
        final data = dto.data ?? [];
        isLastPage
            ? refreshController.loadNoData()
            : refreshController.loadComplete();
        allOrigin.addAll(data);
        searchAttendanceRecord.setData(allOrigin);

        if (allOrigin.isEmpty) throw EmptyListException();
        emit(DataSuccess<List<AttendanceRecordDto>>(allOrigin));
      },
    );
  }
}
