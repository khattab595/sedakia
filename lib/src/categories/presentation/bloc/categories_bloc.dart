 import 'package:injectable/injectable.dart';
import '../../../../../core/bloc/base_cubit.dart';
import '../../domain/use_cases/categories_usecase.dart';


@Injectable()
class CategoriesBloc extends BaseCubit {
  final CategoriesUseCase categoriesUseCase;
  CategoriesBloc(this.categoriesUseCase);



}
