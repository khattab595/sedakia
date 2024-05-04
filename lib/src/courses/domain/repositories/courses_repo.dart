
import '../entities/course.dart';
import '../entities/course_details.dart';

abstract class CoursesRepo {
  Future<List<Course>> fetchMyCourses();
  Future<CourseDetails> fetchCourseDetailsData({required int id});
  Future<String> subscribeCourse({required int courseId,required String courseCode});
  Future<String> attendingMin({required int id,required int min});
}
