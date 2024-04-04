import 'package:injectable/injectable.dart';

import '../entities/notification.dart';
import '../repositories/base_notifications_repo.dart';

@Injectable()
class NotificationsUseCase {
  final BaseNotificationsRepo repository;

  NotificationsUseCase(this.repository);

  Future<List<Notifications>> fetchNotifications() async {
  //  return await repository.fetchNotifications();
    return [
      Notifications(
        id: 1,
        date: '2023 27 2',
        title: 'The shipping company has been contacted',
        time: '11:43 AM',
        description: 'تم توصيل شحنة الاحذية الخاصة بك الى محمود اشرف بنجاح',
      ),
    ];
  }
}
