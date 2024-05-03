import 'package:app/src/my_courses/domain/entities/course.dart';
import 'package:injectable/injectable.dart';
import '../../domin/repositories/base_department_repo.dart';
import '../data_sources/department_datasource.dart';

@Injectable(as: BaseDepartmentRepo)
class DepartmentRepo extends BaseDepartmentRepo{
  final DepartmentDatasource  datasource;
  DepartmentRepo(this.datasource);



  @override
  Future<List<Course>> fetchDepartmentData({required int id}) async{
    final response =  await datasource.fetchDepartmentCourses(id);
    return response.data?.map((e) => Course.fromDto(e)).toList()??[];
  }

}