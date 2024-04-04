import 'package:injectable/injectable.dart';

import '../../../../core/network/api_response.dart';
import '../../domain/repositories/base_favorites_repo.dart';
import '../data_sources/favorites_datasource.dart';

@Injectable(as: BaseFavoritesRepo)
class FavoritesRepo extends BaseFavoritesRepo {
  final FavoritesDatasource remoteDataSource;

  FavoritesRepo(this.remoteDataSource);

  @override
  Future<ApiResponse<List<String>>> fetchFavorites() async {
    return await remoteDataSource.fetchFavorites();
  }

  @override
  Future<ApiResponse> toggleFavorite(int id) async {
    final result = await remoteDataSource.toggleFavorite(id);
    return result;
  }
}
