import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/base_cubit.dart';
import '../../../domain/repositories/request_log_repo.dart';

@Injectable()
class RequestLogCubit extends BaseCubit {
  final RequestLogRepo repo;

  RequestLogCubit(this.repo);

  void fetchRequestLog() {
    executeSuccess(() => repo.fetchRequestLog());
  }
}
