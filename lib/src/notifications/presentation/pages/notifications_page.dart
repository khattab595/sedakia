
import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../data/models/notification_dto.dart';
import '../../domain/entities/notification.dart';
import '../bloc/notification_bloc.dart';
import 'notifications_screen.dart';

class NotificationsPage extends BaseBlocWidget<DataSuccess<List<NotificationDto>>, NotificationsCubit> {
   NotificationsPage({Key? key}) : super(key: key);


   @override
   void loadInitialData(BuildContext context) {
     bloc.fetchNotifications();
   }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<NotificationDto>> state) {
    return NotificationsScreen(
     notifications: state.data!,
   );
  }

  @override
  String? title(BuildContext context) {
    return strings.notifications;
  }
}
