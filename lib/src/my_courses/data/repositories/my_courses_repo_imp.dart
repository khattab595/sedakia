
import 'package:injectable/injectable.dart';
import '../../domain/repositories/my_courses_repo.dart';
import '../data_sources/my_courses_datasource.dart';
import '../models/my_courses_dto.dart';


@Injectable(as: MyCoursesRepo)
class MyCoursesRepoImp extends MyCoursesRepo{
  final MyCoursesDatasource  datasource;
  MyCoursesRepoImp(this.datasource);

  @override
  Future<List<MyCoursesDto>> fetchMyCourses() async{
    final response = await datasource.fetchMyCourses();
    return response.data!;
  }

}