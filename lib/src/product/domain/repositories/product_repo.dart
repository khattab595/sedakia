import '../../data/models/product_dto.dart';
import '../../data/models/product_params.dart';
import '../../data/models/search_params.dart';

abstract class ProductRepo {
  Future<ProductDto> fetchGetProduct(SearchParams params);
  Future<String> createProduct(ProductParams params);
  Future<String> updateProduct(
      {required ProductParams params, required int id});
  Future<String> deleteProduct(int id);
}
