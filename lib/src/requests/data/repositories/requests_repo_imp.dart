import 'package:app/src/requests/data/models/order_details_dto.dart';
import 'package:injectable/injectable.dart';

import '../../../product/data/models/search_params.dart';
import '../../domain/repositories/requests_repo.dart';
import '../data_sources/requests_datasource.dart';
import '../models/order_dto.dart';

@Injectable(as: RequestsRepo)
class RequestsRepoImp extends RequestsRepo {
  final RequestsDatasource datasource;

  RequestsRepoImp(this.datasource);

  @override
  Future<OrderDto> fetchOrder(SearchParams params) async {
    final response = await datasource.fetchOrder(params);
    return response.payload!;
  }

  @override
  Future<String> changeStatus(int id) async {
    final response = await datasource.changeStatus(id);
    return response.message!;
  }

  @override
  Future<OrderDetailsDto> orderDetails(int id) async {
    final response = await datasource.orderDetails(id);
    return response.payload!;
  }
}
