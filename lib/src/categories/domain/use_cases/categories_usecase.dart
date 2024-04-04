import 'package:injectable/injectable.dart';

import '../../../../core/network/api_response.dart';
import '../../../invoices/data/models/product_dto.dart';
import '../../data/models/product_filter_params.dart';
import '../entities/category.dart';
import '../repositories/base_categories_repo.dart';

@Injectable()
class CategoriesUseCase {
  final BaseCategoriesRepo repository;

  CategoriesUseCase(this.repository);

  Future<List<Category>> fetchCategories() async {
    final data = await repository.fetchCategories();
    return data.map((e) => Category.fromDto(e)).toList();
  }

  Future<ApiResponse<List<ProductDto>>> fetchCategoryProduct(ProductFilterParams  params) async {
    return await repository.fetchCategoryProduct(params);
  }

}
