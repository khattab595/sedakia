
import 'package:injectable/injectable.dart';
import '../../domain/entities/course.dart';
import '../../domain/entities/course_details.dart';
import '../../domain/repositories/courses_repo.dart';
import '../data_sources/courses_datasource.dart';
import '../models/attending_lesson_params.dart';
import '../models/course_subscription_params.dart';


@Injectable(as: CoursesRepo)
class CoursesRepoImp extends CoursesRepo{
  final CoursesDatasource  datasource;
  CoursesRepoImp(this.datasource);

  @override
  Future<List<Course>> fetchMyCourses() async{
    final response = await datasource.fetchMyCourses();
    return response.data?.map((e) => Course.fromDto(e)).toList() ?? [];
  }


  @override
  Future<CourseDetails> fetchCourseDetailsData({required int id})async {
    final response =  await datasource.fetchCourseDetailsData(id);
    return CourseDetails.fromDto(response.data!);
  }

  @override
  Future<String> subscribeCourse(CourseSubscriptionParams params)async {
    final response =  await datasource.subscribeCourse(params);
    return response.message ?? '';
  }

  @override
  Future<String> attendingMin(AttendingLessonParams params) async{
    final response =  await datasource.attendingMin(params);
    return response.message ?? '';
  }

  @override
  Future<Lesson> fetchLessonDetails(int id) async {
    final response =  await datasource.fetchLessonDetails(id);
    return Lesson.fromDto(response.data!);
  }
}