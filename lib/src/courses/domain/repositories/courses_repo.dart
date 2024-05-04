
import '../../data/models/attending_lesson_params.dart';
import '../../data/models/course_subscription_params.dart';
import '../entities/course.dart';
import '../entities/course_details.dart';

abstract class CoursesRepo {
  Future<List<Course>> fetchMyCourses();
  Future<CourseDetails> fetchCourseDetailsData({required int id});
  Future<String> subscribeCourse(CourseSubscriptionParams params);
  Future<String> attendingMin(AttendingLessonParams params);
  Future<Lesson> fetchLessonDetails(int id);
}
