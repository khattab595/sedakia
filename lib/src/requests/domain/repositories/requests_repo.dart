

import '../../../product/data/models/search_params.dart';
import '../../data/models/order_details_dto.dart';
import '../../data/models/order_dto.dart';

abstract class RequestsRepo {
   Future<OrderDto> fetchOrder(SearchParams params);
   Future<OrderDetailsDto> orderDetails(int id);
   Future<String> changeStatus(int id);
}