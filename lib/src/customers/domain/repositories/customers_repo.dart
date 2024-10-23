import '../../../product/data/models/search_params.dart';
import '../../data/models/customer_dto.dart';

abstract class CustomersRepo {
  Future<CustomerDto> fetchCustomer(SearchParams params);
}
