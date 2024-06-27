
import '../../../../core/network/api_response.dart';
import '../../data/models/notification_dto.dart';
import '../../data/models/notification_prams.dart';

abstract class NotificationsRepo {
  Future<ApiResponse<List<NotificationDto>>>  fetchNotifications(NotificationPrams notificationPrams);
}
