import 'package:injectable/injectable.dart';
import '../../../../../core/bloc/base_cubit.dart';
import '../../../../core/commen/common_state.dart';
import '../../../product/data/models/search_params.dart';
import '../../domain/entities/Customer_model.dart';
import '../../domain/repositories/customers_repo.dart';
import '../../domain/use_cases/customers_usecase.dart';

@Injectable()
class CustomersBloc extends BaseCubit {
  final CustomersRepo _repo;
  final CustomersUseCase customersUseCase;
  CustomersBloc(this._repo, this.customersUseCase);

  StreamStateInitial<CustomerModel?> customerStreamData = StreamStateInitial();

  fetchGetData(SearchParams searchParams) {
    fetchCustomer(searchParams);
    searchCustomer(searchParams);
  }

  void fetchCustomer(SearchParams params) {
    executeSuccess(() => customersUseCase.fetchCustomer(params));
  }

  searchCustomer(SearchParams params) async {
    try {
      final data = await customersUseCase.fetchCustomer(params);
      customerStreamData.setData(data);
    } catch (e) {
      customerStreamData.setError(e);
      print(e);
      rethrow;
    }
  }
}
