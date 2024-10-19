

import '../../data/models/customer_dto.dart';

abstract class CustomersRepo {
   Future<List<CustomerDto>> fetchCustomer();
}