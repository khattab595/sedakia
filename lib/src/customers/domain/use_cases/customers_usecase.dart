

import 'package:injectable/injectable.dart';

import '../repositories/customers_repo.dart';

@Injectable()
class CustomersUseCase  {
  final CustomersRepo customersRepo ;

  CustomersUseCase(this.customersRepo);
/*

  Future<String> call({int? params}) async {
    final response = await jobOffersRepository.confirmRequiredTask(params!);
    return response.message ?? '';
  }


  Future<List<AllUserEntity>> call( ) async {
    final result = await repository.fetchUserType();
    final data = result.map((e) => AllUserEntity.fromDto(e)).toList();
    return data;
  }
   */

}