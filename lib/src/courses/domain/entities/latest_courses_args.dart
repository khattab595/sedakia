import '../../../home/domain/entities/department.dart';
import 'course.dart';

class LatestCoursesArgs {
  final List<Course> courses;
  final List<Department> departments;

  LatestCoursesArgs({
    required this.courses,
    required this.departments,
  });
}
