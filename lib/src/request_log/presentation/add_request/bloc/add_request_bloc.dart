import 'package:app/src/request_log/domain/repositories/request_log_repo.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/bloc/base_cubit.dart';
import '../../../data/models/add_request_params.dart';

@Injectable()
class AddRequestCubit extends BaseCubit {
  final RequestLogRepo _repo;

  AddRequestCubit(this._repo);

  void fetchLeaveTypes() {
    executeDoubleSuccess(
      () => _repo.fetchLeaveTypes(),
      () => _repo.fetchLeaveSubTypes(),
    );
  }

  void addRequest(AddRequestParams params) {
    executeEmitterListener(() => _repo.addRequest(params));
  }
}
