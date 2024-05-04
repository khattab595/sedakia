


import '../../../courses/domain/entities/course.dart';

abstract class DepartmentsRepo {
  Future<List<Course>> fetchDepartmentData({required int id});
}