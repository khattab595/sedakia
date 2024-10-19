
import 'package:app/src/product/data/models/product_params.dart';
import 'package:injectable/injectable.dart';

  import '../../domain/repositories/product_repo.dart';
 import '../data_sources/product_datasource.dart';
import '../models/product_dto.dart';

@Injectable(as: ProductRepo)
class ProductRepoImp extends ProductRepo {
  final ProductDatasource datasource;

  ProductRepoImp(this.datasource);

   @override
  Future<List<ProductDto>> fetchGetProduct() async {
    final response = await datasource.fetchGetProduct();
    return response.data!;
  }

  @override
  Future<String> createProduct(ProductParams params)async {
   final response =await datasource.createProduct(params);
   return response.message!;
  }

  @override
  Future<String> deleteProduct(ProductParams params) async{
    final response =await datasource.deleteProduct(params);
    return response.message!;
  }
}
