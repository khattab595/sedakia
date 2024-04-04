import 'package:injectable/injectable.dart';

import '../../../../core/bloc/base_cubit.dart';
import '../../../favorites/domain/use_cases/favorites_usecase.dart';
import '../../domain/use_cases/home_usecase.dart';




@Injectable()
class HomeCubit extends BaseCubit {
  final HomeUseCase usecase;
  final FavoritesUseCase favoritesUseCase;

  HomeCubit(this.usecase, this.favoritesUseCase);

  fetchHomeData() async {
    executeSuccess(() => usecase.fetchHomeData());
  }

  toggleFavorite(int id) async {
    executeSuccess(() => favoritesUseCase.toggleFavorite(id));
  }

}
