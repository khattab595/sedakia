
import '../entities/course.dart';

abstract class RequestLogRepo {
  Future<List<Course>> fetchRequestLog();
  Future<String> addRequest();
}
