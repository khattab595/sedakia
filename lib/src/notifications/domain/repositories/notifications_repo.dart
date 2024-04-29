
import '../entities/notification.dart';

abstract class NotificationsRepo {
  Future<List<Notifications>> fetchNotifications();
}
