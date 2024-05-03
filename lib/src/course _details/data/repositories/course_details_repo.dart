import 'package:injectable/injectable.dart';
import '../../domin/entities/course_details.dart';
import '../../domin/repositories/base_course_details_repo.dart';
import '../data_sources/course_details_datasource.dart';


@Injectable(as: BaseCourseDetailsRepo)
class CourseDetailsRepo extends BaseCourseDetailsRepo{
  final CourseDetailsDatasource  datasource;
  CourseDetailsRepo(this.datasource);


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