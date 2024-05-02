import 'package:app/src/course%20_details/data/models/course_details_dto.dart';
import 'package:injectable/injectable.dart';
import '../../domin/repositories/base_course_details_repo.dart';
import '../data_sources/course_details_datasource.dart';


@Injectable(as: BaseCourseDetailsRepo)
class CourseDetailsRepo extends BaseCourseDetailsRepo{
  final CourseDetailsDatasource  datasource;
  CourseDetailsRepo(this.datasource);


  @override
  Future<CourseDetailsDto> fetchCourseDetailsData({required int id})async {
    final response =  await datasource.fetchCourseDetailsData(id);
    return response.data!;
  }


}