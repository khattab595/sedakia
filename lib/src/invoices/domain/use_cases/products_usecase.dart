import 'package:app/core/network/api_response.dart';
import 'package:app/src/invoices/data/models/product_details_dto.dart';
import 'package:app/src/invoices/data/models/product_dto.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/filter_params.dart';
import '../repositories/base_products_repo.dart';

@Injectable()
class ProductsUseCase {
  final BaseProductsRepo repository ;
  ProductsUseCase(this.repository);

  Future<ApiResponse<List<InvoiceDto>>> fetchProducts(String type) async {
    return await repository.fetchProducts(type);
  }

  Future<ApiResponse<List<InvoiceDto>>> fetchProductsBySearch(FilterParams filterParams) async {
    return await repository.fetchProductsBySearch(filterParams);
  }

  Future<ProductDetailsDto> fetchProductDetails(int id) async {
   final data = await repository.fetchProductDetails(id);
   return data.data!;
  }
}