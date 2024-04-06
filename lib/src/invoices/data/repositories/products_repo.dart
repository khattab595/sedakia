
import 'package:injectable/injectable.dart';

import '../../../../core/network/api_response.dart';
import '../../domain/repositories/base_products_repo.dart';
import '../data_sources/products_datasource.dart';
import '../models/filter_params.dart';
import '../models/product_details_dto.dart';
import '../models/product_dto.dart';


@Injectable(as: BaseProductsRepo)
class ProductsRepo extends BaseProductsRepo{
  final ProductsDatasource  datasource;
  ProductsRepo(this.datasource);

  @override
  Future<ApiResponse<List<InvoiceDto>>> fetchProducts(String type) async {
    return await datasource.fetchProductsByType(type);
  }
  @override
  Future<ApiResponse<List<InvoiceDto>>> fetchProductsBySearch(FilterParams filterParams) async {
    return await datasource.fetchProductsBySearch(filterParams);
  }

  @override
  Future<ApiResponse<ProductDetailsDto>> fetchProductDetails(int id) async {
    return await datasource.fetchProductDetails(id);
  }

}