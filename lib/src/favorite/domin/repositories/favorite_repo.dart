
import '../../../my_courses/domain/entities/course.dart';

abstract class FavoriteRepo {
  Future<List<Course>> fetchFavorite();
  Future<String> addFavorite({required int id});
  Future<String> removeFavorite({required int id});

}