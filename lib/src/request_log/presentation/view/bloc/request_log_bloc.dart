import 'package:injectable/injectable.dart';

import '../../../../../core/bloc/base_cubit.dart';
import '../../../data/models/my_request_params.dart';
import '../../../domain/repositories/request_log_repo.dart';

@Injectable()
class RequestLogCubit extends BaseCubit {
  final RequestLogRepo repo;

  RequestLogCubit(this.repo);

  void fetchRequestLog(MyRequestParams params) {
    executeSuccess(() => repo.fetchMyRequest(params));
  }
}
