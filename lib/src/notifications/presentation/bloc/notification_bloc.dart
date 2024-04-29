import 'package:app/src/notifications/domain/repositories/notifications_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/bloc/base_cubit.dart';

@Injectable()
class NotificationsCubit extends BaseCubit {
  final NotificationsRepo repo;

  NotificationsCubit(this.repo);

  fetchNotifications() async {
    executeSuccess(() => repo.fetchNotifications());
  }
}
