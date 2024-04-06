
import '../../../../core/network/api_response.dart';
import '../../data/models/filter_params.dart';
import '../../data/models/product_details_dto.dart';
import '../../data/models/product_dto.dart';

abstract class BaseProductsRepo {
  Future<ApiResponse<List<InvoiceDto>>> fetchProducts(String type);
  Future<ApiResponse<List<InvoiceDto>>> fetchProductsBySearch(FilterParams filterParams);
  Future<ApiResponse<ProductDetailsDto>> fetchProductDetails(int id);
}
