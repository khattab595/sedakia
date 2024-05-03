
import 'package:injectable/injectable.dart';
import '../../domain/entities/course.dart';
import '../../domain/repositories/my_courses_repo.dart';
import '../data_sources/my_courses_datasource.dart';


@Injectable(as: MyCoursesRepo)
class MyCoursesRepoImp extends MyCoursesRepo{
  final MyCoursesDatasource  datasource;
  MyCoursesRepoImp(this.datasource);

  @override
  Future<List<Course>> fetchMyCourses() async{
    final response = await datasource.fetchMyCourses();
    return response.data?.map((e) => Course.fromDto(e)).toList() ?? [];
  }

}