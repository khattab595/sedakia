import 'package:injectable/injectable.dart';
import '../../../../../core/bloc/base_cubit.dart';
import '../../../data/models/status_params.dart';
import '../../../domain/repositories/requests_repo.dart';
import '../../../domain/use_cases/product_usecase.dart';

@Injectable()
class RequestDetailsBloc extends BaseCubit {
  final RequestsUseCase requestsUseCase;
  final RequestsRepo requestsRepo;
  RequestDetailsBloc(this.requestsUseCase, this.requestsRepo);

  void orderDetails(int id) {
    executeSuccess(() => requestsRepo.orderDetails(id));
  }

  void changeStatus(StatusParams params,int id) {
    executeEmitterListener(() => requestsRepo.changeStatus(params,id));
  }
}
