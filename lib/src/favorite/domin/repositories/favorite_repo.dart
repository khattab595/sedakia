
import '../../../my_courses/domain/entities/course.dart';

abstract class FavoriteRepo {
  Future<List<Course>> fetchFavorite();
  Future<dynamic> addFavorite({required int id});
  Future<dynamic> removeFavorite({required int id});

}