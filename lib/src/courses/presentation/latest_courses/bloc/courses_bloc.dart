
import 'package:injectable/injectable.dart';
import '../../../../../../core/bloc/base_cubit.dart';
import '../../../../../../core/resources/data_state.dart';
import '../../../../favorite/domin/repositories/favorite_repo.dart';
import '../../../../favorite/models/favorite_params.dart';

@Injectable()
class CoursesCubit extends BaseCubit {
  final FavoriteRepo favoriteRepo;

  CoursesCubit(this.favoriteRepo);


  Future<bool> toggleFavorite(FavoriteParams params) async {
    int id = params.id;
    bool isFavorite = false;
    await executeListener(
        () => params.isFavorite
            ? favoriteRepo.removeFavorite(id: id)
            : favoriteRepo.addFavorite(id: id), onSuccess: (data) {
      isFavorite = !params.isFavorite;
      emit((SuccessState()));
    });
    return isFavorite;
  }
}
