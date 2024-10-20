import 'package:app/src/categories/data/models/category_params.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/categories_repo.dart';
import '../data_sources/catagory_datasource.dart';
import '../models/category_dto.dart';

@Injectable(as: CategoriesRepo)
class CategoriesRepoImp extends CategoriesRepo {
  final CategoriesDatasource datasource;

  CategoriesRepoImp(this.datasource);

  @override
  Future<CategoryDto> fetchCategory() async {
    final response = await datasource.fetchCategory();
    return response.payload!;
  }

  @override
  Future<String> addCategory(CategoryParams params)async {
    final response = await datasource.addCategory(params);
    return response.message!;
  }

  @override
  Future<String> deleteCategory(int id)async {
   final response=await datasource.deleteCategory(id);
   return response.message!;
  }
}
