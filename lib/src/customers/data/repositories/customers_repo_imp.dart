
import 'package:injectable/injectable.dart';

  import '../../domain/repositories/customers_repo.dart';
 import '../data_sources/customers_datasource.dart';
import '../models/customer_dto.dart';

@Injectable(as: CustomersRepo)
class CustomersRepoImp extends CustomersRepo {
  final CustomersDatasource datasource;

  CustomersRepoImp(this.datasource);

  @override
  Future<List<CustomerDto>> fetchCustomer() async {
    final response = await datasource.fetchCustomer();
    return response.data!;
  }
}
