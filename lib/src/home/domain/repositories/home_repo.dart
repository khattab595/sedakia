
import '../../../my_courses/domain/entities/course.dart';
import '../entities/department.dart';
import '../entities/slide.dart';
import '../entities/teacher.dart';

abstract class HomeRepo {
  Future<List<Slide>> fetchSlides();
  Future<Course> fetchRecentlyData();
  Future<List<Department>> fetchDepartmentsData();
  Future<List<Course>> fetchRecentlyCoursesData();
  Future<List<Teacher>> fetchTeachersData();
}