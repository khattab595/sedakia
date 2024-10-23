import 'package:injectable/injectable.dart';
import '../../../../../../core/bloc/base_cubit.dart';
import '../../../../../core/commen/common_state.dart';
import '../../../../product/data/models/search_params.dart';
import '../../../domain/entities/Order_model.dart';
import '../../../domain/repositories/requests_repo.dart';
import '../../../domain/use_cases/product_usecase.dart';

@Injectable()
class RequestsBloc extends BaseCubit {
  final RequestsUseCase requestsUseCase;
  final RequestsRepo _repo;
  RequestsBloc(this.requestsUseCase, this._repo);

  StreamStateInitial<OrderModel?> orderStreamData = StreamStateInitial();

  fetchGetData(SearchParams searchParams) {
    fetchOrder(searchParams);
    searchOrder(searchParams);
  }

  void fetchOrder(SearchParams params) {
    executeSuccess(() => requestsUseCase.fetchOrder(params));
  }

  void changeStatus(int id) {
    executeEmitterListener(() => _repo.changeStatus(id));
  }

  searchOrder(SearchParams params) async {
    try {
      final data = await requestsUseCase.fetchOrder(params);
      orderStreamData.setData(data);
    } catch (e) {
      orderStreamData.setError(e);
      print(e);
      rethrow;
    }
  }
}
