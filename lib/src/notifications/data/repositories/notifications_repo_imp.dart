
import 'package:injectable/injectable.dart';
import '../../domain/repositories/notifications_repo.dart';
import '../data_sources/notifications_datasource.dart';
import '../models/notification_dto.dart';


@Injectable(as: NotificationsRepo)
class NotificationsRepoImp extends NotificationsRepo{
  final NotificationsDatasource  datasource;
  NotificationsRepoImp(this.datasource);

  @override
  Future<List<NotificationDto>> fetchNotifications() async{
    final response = await datasource.fetchNotifications();
    return response.data!;
  }

}