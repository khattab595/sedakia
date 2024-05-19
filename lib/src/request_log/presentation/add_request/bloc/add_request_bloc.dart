import 'package:app/src/request_log/domain/repositories/request_log_repo.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/bloc/base_cubit.dart';

@Injectable()
class AddRequestCubit extends BaseCubit {
  final RequestLogRepo _repo;

  AddRequestCubit(this._repo);


  void addRequest() {
    executeEmitterListener(() => _repo.addRequest());
  }

}
