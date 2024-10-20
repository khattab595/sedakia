import 'package:injectable/injectable.dart';
import '../../../../../core/bloc/base_cubit.dart';
import '../../data/models/category_params.dart';
import '../../domain/repositories/categories_repo.dart';
import '../../domain/use_cases/categories_usecase.dart';

@Injectable()
class CategoriesBloc extends BaseCubit {
  final CategoriesRepo _repo;
  final CategoriesUseCase categoriesUseCase;
  CategoriesBloc(this._repo,this.categoriesUseCase);


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
