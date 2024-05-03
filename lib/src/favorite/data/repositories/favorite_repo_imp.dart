
import 'package:app/src/my_courses/domain/entities/course.dart';
import 'package:injectable/injectable.dart';
import '../../domin/repositories/favorite_repo.dart';
import '../data_sources/favorite_datasource.dart';


@Injectable(as: FavoriteRepo)
class FavoriteRepoImp extends FavoriteRepo{
  final FavoriteDatasource  datasource;
  FavoriteRepoImp(this.datasource);



  @override
  Future<List<Course>> fetchFavorite()async {
    final response = await datasource.fetchFavoriteData();
    return response.data?.map((e) => Course.fromDto(e)).toList() ?? [];
  }

  @override
  Future addFavorite({required int id}) async{
    final response = await datasource.addFavorite(id);
    return response.data!;
  }


  @override
  Future removeFavorite({required int id}) async{
    final response = await datasource.removeFavorite(id);
    return response.data!;
  }

}