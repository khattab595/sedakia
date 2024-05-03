
import '../../data/models/course_dto.dart';

abstract class MyCoursesRepo {
  Future<List<CourseDto>> fetchMyCourses();
}
