import 'package:injectable/injectable.dart';
import '../entities/Category.dart';
import '../repositories/categories_repo.dart';

@Injectable()
class CategoriesUseCase {
  final CategoriesRepo categoriesRepo;

  CategoriesUseCase(this.categoriesRepo);

  Future<CategoryModel> fetchCategory() async {
    final result = await categoriesRepo.fetchCategory();
    final data = CategoryModel.fromDto(result);
    return data;
  }

}
