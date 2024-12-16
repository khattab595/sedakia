import 'package:injectable/injectable.dart';
import '../../../product/data/models/search_params.dart';
import '../entities/Customer_model.dart';
import '../repositories/customers_repo.dart';

@Injectable()
class CustomersUseCase {
  final CustomersRepo customersRepo;

  CustomersUseCase(this.customersRepo);

  Future<CustomerModel> fetchCustomer(SearchParams params) async {
    final result = await customersRepo.fetchCustomer(params);
    final data = CustomerModel.fromDto(result);
    return data;
  }
}
