

import '../entities/course_details.dart';

abstract class BaseCourseDetailsRepo {
  Future<CourseDetails> fetchCourseDetailsData({required int id});
  Future<dynamic> subscribeCourse({required int courseId,required String courseCode});

}