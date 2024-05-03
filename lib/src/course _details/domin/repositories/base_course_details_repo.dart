

import '../entities/course_details.dart';

abstract class BaseCourseDetailsRepo {
  Future<CourseDetails> fetchCourseDetailsData({required int id});
  Future<String> subscribeCourse({required int courseId,required String courseCode});
  Future<String> attendingMin({required int id,required int min});

}