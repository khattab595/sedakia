import '../../data/models/category_dto.dart';
import '../../data/models/category_params.dart';

abstract class CategoriesRepo {
  Future<CategoryDto> fetchCategory();
  Future<String> addCategory(CategoryParams params);
  Future<String> updateCategory(CategoryParams params, int id);
  Future<String> deleteCategory(int id);
}
