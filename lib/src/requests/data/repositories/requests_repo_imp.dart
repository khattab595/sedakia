
import 'package:injectable/injectable.dart';

  import '../../domain/repositories/requests_repo.dart';
import '../data_sources/requests_datasource.dart';
import '../models/order_dto.dart';

@Injectable(as: RequestsRepo)
class RequestsRepoImp extends RequestsRepo {
  final RequestsDatasource datasource;

  RequestsRepoImp(this.datasource);

  @override
  Future<OrderDto> fetchOrder() async {
    final response = await datasource.fetchOrder();
    return response.payload!;
  }

  @override
  Future<String> changeStatus(int id) async {
    final response = await datasource.changeStatus(id);
    return response.message!;
  }
}
