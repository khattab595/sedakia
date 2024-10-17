

import 'package:injectable/injectable.dart';

import '../repositories/product_repo.dart';

@Injectable()
class ProductUseCase  {
  final ProductRepo productRepo ;

  ProductUseCase(this.productRepo);
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