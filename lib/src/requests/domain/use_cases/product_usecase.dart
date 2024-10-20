

import 'package:injectable/injectable.dart';

import '../entities/Order_model.dart';
import '../repositories/requests_repo.dart';

@Injectable()
class RequestsUseCase  {
  final RequestsRepo requestsRepo ;

  RequestsUseCase(this.requestsRepo);



  Future<OrderModel> fetchOrder() async {
    final result = await requestsRepo.fetchOrder();
    final data = OrderModel.fromDto(result);
    return data;
  }

}