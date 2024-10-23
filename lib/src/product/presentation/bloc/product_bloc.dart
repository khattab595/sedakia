import 'package:injectable/injectable.dart';
import '../../../../../core/bloc/base_cubit.dart';
import '../../../../core/commen/common_state.dart';
import '../../../categories/domain/use_cases/categories_usecase.dart';
import '../../data/models/product_dto.dart';
import '../../data/models/product_params.dart';
import '../../data/models/search_params.dart';
import '../../domain/repositories/product_repo.dart';

@Injectable()
class ProductBloc extends BaseCubit {
  final ProductRepo _repo;
  final CategoriesUseCase categoriesUseCase;

  ProductBloc(this._repo, this.categoriesUseCase);
  StreamStateInitial<ProductDto?> productStreamData = StreamStateInitial();

  fetchGetData(SearchParams searchParams) {
    fetchGetProduct(searchParams);
    searchProduct(searchParams);
  }

  void fetchGetProduct(SearchParams params) {
    executeSuccess(() => _repo.fetchGetProduct(params));
  }

  void createProduct(ProductParams params) {
    executeEmitterListener(() => _repo.createProduct(params));
  }

  void updateProduct(ProductParams params, int id) {
    executeEmitterListener(() => _repo.updateProduct(params: params, id: id));
  }

  void deleteProduct(int id) {
    executeEmitterListener(() => _repo.deleteProduct(id));
  }

  void fetchCategory() {
    executeSuccess(() => categoriesUseCase.fetchCategory());
  }

  searchProduct(SearchParams params) async {
    try {
      final data = await _repo.fetchGetProduct(params);
      productStreamData.setData(data);
    } catch (e) {
      productStreamData.setError(e);
      print(e);
      rethrow;
    }
  }
}
