
import '../../../main_index.dart';
import '../../domain/entities/notification.dart';
import '../widgets/notification_item.dart';

class NotificationsScreen extends BaseStatelessWidget {
  final List<Notifications> notifications;
   NotificationsScreen({Key? key, required this.notifications}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notifications.length,
      padding: 10.paddingAll,
      itemBuilder: (context, index) {
        return NotificationItem(
          notification: notifications[index],
          isFirst: index == 0 ? true : false,
          isLast: index == notifications.length - 1 ? true : false,
        );
      },
    );
  }
}
