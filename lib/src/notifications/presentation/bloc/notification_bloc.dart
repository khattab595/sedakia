import 'package:app/src/notifications/domain/repositories/notifications_repo.dart';
import 'package:injectable/injectable.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

import '../../../../core/bloc/base_cubit.dart';
import '../../../../core/commen/common_state.dart';
import '../../../../core/exceptions/empty_list_exception.dart';
import '../../../../core/resources/data_state.dart';
import '../../../attendance_record/data/model/attendance_record_prams.dart';
import '../../data/models/notification_dto.dart';
import '../../data/models/notification_prams.dart';

@Injectable()
class NotificationsCubit extends BaseCubit {
  final NotificationsRepo usecase;

  NotificationsCubit(this.usecase);


  StreamStateInitial<List<NotificationDto>> searchNotificationStrame =
  StreamStateInitial();
  List<NotificationDto> allOrigin = [];
  int page = 0;
  bool isLastPage = false;
  NotificationPrams params = NotificationPrams();
  RefreshController refreshController = RefreshController();

  fetchNotifications(
      {bool isRefresh = true, NotificationPrams? params}) async {
    isRefresh ? {page = 1, allOrigin.clear()} : page++;
    this.params = params ?? this.params;
    this.params.page = page;
    executeBuilder(
      isRefresh: isRefresh,
          () => usecase.fetchNotifications(  this.params),
      onSuccess: (dto) {
        isLastPage = (dto.pagination?.totalPages ?? 1) == page;
        final data = dto.data ?? [];
        isLastPage
            ? refreshController.loadNoData()
            : refreshController.loadComplete();
        allOrigin.addAll(data);
        searchNotificationStrame.setData(allOrigin);

        if (allOrigin.isEmpty) throw EmptyListException();
        emit(DataSuccess<List<NotificationDto>>(allOrigin));
      },
    );
  }
}
