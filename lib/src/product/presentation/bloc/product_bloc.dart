 import 'package:injectable/injectable.dart';
import '../../../../../core/bloc/base_cubit.dart';
import '../../data/models/product_params.dart';
import '../../domain/repositories/product_repo.dart';


@Injectable()
class ProductBloc extends BaseCubit {
  final ProductRepo _repo;
  ProductBloc(this._repo);

  void fetchGetProduct() {
    executeSuccess(() => _repo.fetchGetProduct());
  }

  void createProduct(ProductParams params) {
    executeEmitterListener(() => _repo.createProduct(params));
  }

  void deleteProduct(int id) {
    executeEmitterListener(() => _repo.deleteProduct(id));
  }

}
