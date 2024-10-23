import 'package:injectable/injectable.dart';

import '../../../product/data/models/search_params.dart';
import '../../domain/repositories/customers_repo.dart';
import '../data_sources/customers_datasource.dart';
import '../models/customer_dto.dart';

@Injectable(as: CustomersRepo)
class CustomersRepoImp extends CustomersRepo {
  final CustomersDatasource datasource;

  CustomersRepoImp(this.datasource);

  @override
  Future<CustomerDto> fetchCustomer(SearchParams params) async {
    final response = await datasource.fetchCustomer(params);
    return response.payload!;
  }
}
