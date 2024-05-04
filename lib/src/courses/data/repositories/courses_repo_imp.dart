
import 'package:injectable/injectable.dart';
import '../../domain/entities/course.dart';
import '../../domain/entities/course_details.dart';
import '../../domain/repositories/courses_repo.dart';
import '../data_sources/courses_datasource.dart';


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
  Future<String> subscribeCourse({required int courseId, required String courseCode})async {
    final response =  await datasource.subscribeCourse(courseId, courseCode);
    return response.data!;
  }

  @override
  Future<String> attendingMin({required int id, required int min}) async{
    final response =  await datasource.attendingMin(id, min);
    return response.data!;
  }
}