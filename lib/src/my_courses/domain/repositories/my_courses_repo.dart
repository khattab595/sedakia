
import '../../data/models/my_courses_dto.dart';

abstract class MyCoursesRepo {
  Future<List<MyCoursesDto>> fetchMyCourses();
}
