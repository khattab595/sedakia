

import 'package:injectable/injectable.dart';

import '../repositories/categories_repo.dart';

@Injectable()
class CategoriesUseCase  {
  final CategoriesRepo categoriesRepo ;

  CategoriesUseCase(this.categoriesRepo);
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