
import '../../data/models/notification_dto.dart';
import '../entities/notification.dart';

abstract class NotificationsRepo {
  Future<List<NotificationDto>> fetchNotifications();
}
