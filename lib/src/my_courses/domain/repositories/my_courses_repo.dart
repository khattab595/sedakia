
import '../../data/models/course_dto.dart';
import '../entities/course.dart';

abstract class MyCoursesRepo {
  Future<List<Course>> fetchMyCourses();
}
