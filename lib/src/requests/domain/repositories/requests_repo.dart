

import '../../data/models/order_dto.dart';

abstract class RequestsRepo {
   Future<OrderDto> fetchOrder();
   Future<String> changeStatus(int id);
}