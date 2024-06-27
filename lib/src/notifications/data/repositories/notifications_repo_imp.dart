
import 'package:injectable/injectable.dart';
import '../../../../core/network/api_response.dart';
 import '../../domain/repositories/notifications_repo.dart';
import '../data_sources/notifications_datasource.dart';
import '../models/notification_dto.dart';
import '../models/notification_prams.dart';


@Injectable(as: NotificationsRepo)
class NotificationsRepoImp extends NotificationsRepo{
  final NotificationsDatasource  datasource;
  NotificationsRepoImp(this.datasource);

  @override
  Future<ApiResponse<List<NotificationDto>>> fetchNotifications(NotificationPrams notificationPrams) async{
    final response = await datasource.fetchNotifications(notificationPrams);
    return response ;
  }

}