
import 'package:injectable/injectable.dart';

import '../../../../core/network/api_response.dart';
import '../../../products/data/models/product_dto.dart';
import '../../domain/repositories/base_categories_repo.dart';
import '../data_sources/categories_datasource.dart';
import '../models/category_dto.dart';
import '../models/product_filter_params.dart';


@Injectable(as: BaseCategoriesRepo)
class CategoriesRepo extends BaseCategoriesRepo{
  final CategoriesDatasource  datasource;
  CategoriesRepo(this.datasource);

  @override
  Future<List<CategoryDto>> fetchCategories() async {
    final data = await datasource.fetchCategories();
    return data.data ?? [];
  }

  @override
  Future<ApiResponse<List<ProductDto>>> fetchCategoryProduct(ProductFilterParams  params) async {
    return await datasource.fetchCategoryProduct(params.categoryId ?? 0, params.page);
  }

}