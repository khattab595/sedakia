
import 'package:app/src/request_log/domain/entities/course.dart';
import 'package:injectable/injectable.dart';

import '../../../request_log/data/models/course_dto.dart';
import '../../domain/repositories/home_repo.dart';
import '../data_sources/home_datasource.dart';


@Injectable(as: HomeRepo)
class HomeRepoImp extends HomeRepo{
  final HomeDatasource  datasource;
  HomeRepoImp(this.datasource);


  @override
  Future<Course> fetchCurrentProject() async {
    final response = await datasource.fetchCurrentProject();
    return Course.fromDto(response.data ?? CourseDto());
  }

  @override
  Future<List<Course>> fetchProjects() async {
    final response = await datasource.fetchProjects();
    return response.data?.map((e) => Course.fromDto(e)).toList() ?? [];
  }


}