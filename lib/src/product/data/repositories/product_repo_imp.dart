import 'dart:io';

import 'package:app/src/product/data/models/product_params.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/product_repo.dart';
import '../data_sources/product_datasource.dart';
import '../models/product_dto.dart';
import '../models/search_params.dart';

@Injectable(as: ProductRepo)
class ProductRepoImp extends ProductRepo {
  final ProductDatasource datasource;

  ProductRepoImp(this.datasource);

  @override
  Future<ProductDto> fetchGetProduct(SearchParams params) async {
    final response = await datasource.fetchGetProduct(params);
    return response.payload!;
  }

  @override
  Future<String> createProduct(ProductParams params) async {
    final response = await datasource.createProduct(
        params.name ?? "",
        params.stockStatus ?? "",
        params.stockQuantity ?? "",
        params.regularPrice ?? "",
        params.salePrice ?? "",
        params.categories ?? "",
        params.shortDescription ?? "",
        params.images!);
    return response.message ?? "";
  }

  @override
  Future<String> updateProduct(
      {required ProductParams params, required int id}) async {
    final response = await datasource.updateProduct(
      id,
      params.name ?? "",
      params.stockStatus ?? "",
      params.stockQuantity ?? "",
      params.regularPrice ?? "",
      params.salePrice ?? "",
      params.categories ?? "",
      params.shortDescription ?? "",
      images: params.images,
    );
    return response.message ?? "";
  }

  @override
  Future<String> deleteProduct(int id) async {
    final response = await datasource.deleteProduct(id);
    return response.message ?? "";
  }
}
