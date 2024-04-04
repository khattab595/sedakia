import 'package:app/core/commen/common_state.dart';
import 'package:app/core/network/api_response.dart';
import 'package:app/src/products/domain/entities/product.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/bloc/base_cubit.dart';
import '../../../../core/resources/data_state.dart';
import '../../../products/data/models/product_dto.dart';
import '../../data/models/product_filter_params.dart';
import '../../domain/entities/category.dart';
import '../../domain/use_cases/categories_usecase.dart';


@Injectable()
class CategoriesCubit extends BaseCubit {
  final CategoriesUseCase usecase;

  CategoriesCubit(this.usecase);

  StreamStateInitial<List<Product>?> productsStream = StreamStateInitial();

  Future<void> fetchCategories() async {
    executeBuilder(() => usecase.fetchCategories(), onSuccess: (data) {
      print('fetchCategories');
      emit(DataSuccess<List<Category>>(data));
      fetchCategoryProduct(data.first.id ?? 0);
    });
  }
 List<Product> allProducts = [];
  bool isLastPage = true;
  ProductFilterParams  params = ProductFilterParams();
  Future<void> fetchCategoryProduct(int id, {bool isRefresh = true, }) async {
    List<Product> products = [];
    isRefresh ? {params.page = 1, allProducts.clear(), productsStream.setData(null)} : params.page += 1;
    params.categoryId = id;
    print('fetchCategories');
    try {
      // productsStream.setData(null);
      final result = await usecase.fetchCategoryProduct(params);
      isLastPage = params.page == result.pagination?.totalPages;
      products =  result.data?.map((e) => Product.fromDto(e)).toList() ?? [];
      allProducts.addAll(products);
      productsStream.setData(allProducts);
    } on Exception catch (e) {
      productsStream.setError(e);
    }
  }
}
