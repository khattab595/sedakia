import 'package:injectable/injectable.dart';
import '../../../courses/domain/entities/course.dart';
import '../../domin/repositories/departments_repo.dart';
import '../data_sources/departments_datasource.dart';

@Injectable(as: DepartmentsRepo)
class DepartmentsRepoImp extends DepartmentsRepo{
  final DepartmentsDatasource  datasource;
  DepartmentsRepoImp(this.datasource);



  @override
  Future<List<Course>> fetchDepartmentData({required int id}) async{
    final response =  await datasource.fetchDepartmentCourses(id);
    return response.data?.map((e) => Course.fromDto(e)).toList()??[];
  }

}