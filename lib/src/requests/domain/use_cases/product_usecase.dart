import 'package:injectable/injectable.dart';

import '../../../product/data/models/search_params.dart';
import '../entities/Order_model.dart';
import '../repositories/requests_repo.dart';

@Injectable()
class RequestsUseCase {
  final RequestsRepo requestsRepo;

  RequestsUseCase(this.requestsRepo);

  Future<OrderModel> fetchOrder(SearchParams params) async {
    final result = await requestsRepo.fetchOrder(params);
    final data = OrderModel.fromDto(result);
    return data;
  }
}
