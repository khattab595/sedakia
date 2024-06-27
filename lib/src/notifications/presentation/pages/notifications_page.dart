import 'package:app/src/notifications/data/models/notification_prams.dart';
import 'package:app/src/profile/presentation/bloc/profile_bloc.dart';

import '../../../../core/components/base_widget_bloc.dart';
import '../../../../core/widgets/custom_empty_widget.dart';
import '../../../../core/widgets/pagination/pagination_widget.dart';
import '../../../main_index.dart';

import '../../data/models/notification_dto.dart';
import '../bloc/notification_bloc.dart';
import 'notifications_screen.dart';

class NotificationsPage extends BaseBlocWidget<
    DataSuccess<List<NotificationDto>>, NotificationsCubit> {
  NotificationsPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchNotifications();
  }

  NotificationPrams prams = NotificationPrams();
  @override
  Widget buildWidget(
      BuildContext context, DataSuccess<List<NotificationDto>> state) {
    return PaginationWidget(
      refreshController: bloc.refreshController,
      onLoading: () {
        bloc.fetchNotifications(isRefresh: false, params: prams);
      },
      onRefresh: () {
        onClickReload();
      },
      child: StreamBuilder<List<NotificationDto>>(
          stream: bloc.searchNotificationStrame.stream,
          builder: (context, snapshot) {
            return snapshot.data == null
                ? const SizedBox()
                : NotificationsScreen(data: snapshot.data!);
          }),
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.notifications;
  }

  @override
  Widget handleEmptyDataPlaceHolder() {
    return CustomEmptyWidget(
      image: AppIcons.notification,
      text: strings.notification_empty_text,
      title: strings.notification_empty_title,
    );
  }
}
