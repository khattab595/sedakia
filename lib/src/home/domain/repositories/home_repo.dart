
import '../../../request_log/domain/entities/course.dart';


abstract class HomeRepo {
  Future<List<Course>> fetchProjects();
  Future<Course> fetchCurrentProject();
}