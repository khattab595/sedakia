 import 'package:injectable/injectable.dart';
import '../../../../../../core/bloc/base_cubit.dart';
import '../../../domain/repositories/requests_repo.dart';
import '../../../domain/use_cases/product_usecase.dart';


@Injectable()
class RequestsBloc extends BaseCubit {
  final RequestsUseCase requestsUseCase;
  final RequestsRepo _repo;
  RequestsBloc(this.requestsUseCase,this._repo);

  void fetchOrder() {
    executeSuccess(() => requestsUseCase.fetchOrder());
  }

  void changeStatus(int id) {
    executeEmitterListener(() => _repo.changeStatus(id));
  }

}
