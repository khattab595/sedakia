

import '../../data/models/product_dto.dart';
import '../../data/models/product_params.dart';

abstract class ProductRepo {
  Future<List<ProductDto>> fetchGetProduct();
  Future<String> createProduct(ProductParams params);
  Future<String> deleteProduct(ProductParams params);
}