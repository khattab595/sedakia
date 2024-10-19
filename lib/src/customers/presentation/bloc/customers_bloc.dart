 import 'package:injectable/injectable.dart';
import '../../../../../core/bloc/base_cubit.dart';
import '../../domain/repositories/customers_repo.dart';


@Injectable()
class CustomersBloc extends BaseCubit {
  final CustomersRepo _repo;
  CustomersBloc(this._repo);

  void fetchCustomer() {
    executeSuccess(() => _repo.fetchCustomer());
  }

}
