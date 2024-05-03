import 'package:injectable/injectable.dart';
import '../../../../core/bloc/base_cubit.dart';
import '../../domin/repositories/favorite_repo.dart';




@Injectable()
class FavoriteCubit extends BaseCubit {
  final FavoriteRepo _repo;

  FavoriteCubit(this._repo);

  fetchFavoriteData() async {
    executeSuccess(() => _repo.fetchFavorite());
  }

  addFavorite({required int id}) async {
    executeSuccess(() => _repo.addFavorite(id: id));
  }

  removeFavorite({required int id}) async {
    executeSuccess(() => _repo.removeFavorite(id: id));
  }
}
