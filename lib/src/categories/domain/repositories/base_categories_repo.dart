
import '../../../../core/network/api_response.dart';
import '../../../products/data/models/product_dto.dart';
import '../../data/models/category_dto.dart';
import '../../data/models/product_filter_params.dart';

abstract class BaseCategoriesRepo {
  Future<List<CategoryDto>> fetchCategories();
  Future<ApiResponse<List<ProductDto>>> fetchCategoryProduct(ProductFilterParams  params);
}
