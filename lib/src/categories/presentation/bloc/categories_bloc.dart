import 'package:injectable/injectable.dart';
import '../../../../../core/bloc/base_cubit.dart';
import '../../../../core/commen/common_state.dart';
import '../../data/models/category_params.dart';
import '../../domain/entities/Category.dart';
import '../../domain/repositories/categories_repo.dart';
import '../../domain/use_cases/categories_usecase.dart';

@Injectable()
class CategoriesBloc extends BaseCubit {
  final CategoriesRepo _repo;
  final CategoriesUseCase categoriesUseCase;


  CategoriesBloc(this._repo,this.categoriesUseCase);

  fetchGetData() {
    fetchCategory();
  }
  void fetchCategory() {
    executeSuccess(() => categoriesUseCase.fetchCategory());
  }


  void addCategory(CategoryParams params) {
    executeEmitterListener(() => _repo.addCategory(params));
  }

  void deleteCategory(int id) {
    executeEmitterListener(() => _repo.deleteCategory(id));
  }


}
