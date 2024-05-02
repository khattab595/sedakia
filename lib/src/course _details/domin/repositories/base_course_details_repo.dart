
import '../../data/models/course_details_dto.dart';

abstract class BaseCourseDetailsRepo {
  Future<CourseDetailsDto> fetchCourseDetailsData({required int id});

}