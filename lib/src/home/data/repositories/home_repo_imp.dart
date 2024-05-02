
import 'package:app/src/my_courses/domain/entities/course.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/department.dart';
import '../../domain/entities/slide.dart';
import '../../domain/entities/teacher.dart';
import '../../domain/repositories/home_repo.dart';
import '../data_sources/home_datasource.dart';


@Injectable(as: HomeRepo)
class HomeRepoImp extends HomeRepo{
  final HomeDatasource  datasource;
  HomeRepoImp(this.datasource);



  @override
  Future<List<Slide>> fetchSlides() async {
    final response = await datasource.fetchSlides();
    return response.data?.map((e) => Slide.fromDto(e)).toList() ?? [];
  }

  @override
  Future<Course> fetchRecentlyData() async {
    final response = await datasource.fetchRecentlyData();
    return Course.fromDto(response.data!);
  }

  @override
  Future<List<Department>> fetchDepartmentsData() async {
    final response = await datasource.fetchDepartmentsData();
    return response.data?.map((e) => Department.fromDto(e)).toList() ?? [];
  }

  @override
  Future<List<Course>> fetchRecentlyCoursesData() async {
    final response = await datasource.fetchRecentlyCoursesData();
    return response.data?.map((e) => Course.fromDto(e)).toList() ?? [];
  }

  @override
  Future<List<Teacher>> fetchTeachersData() async {
    final response = await datasource.fetchTeachersData();
    return response.data?.map((e) => Teacher.fromDto(e)).toList() ?? [];
  }

}