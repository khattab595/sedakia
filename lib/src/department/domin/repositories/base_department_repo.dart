

import 'package:app/src/my_courses/domain/entities/course.dart';


abstract class BaseDepartmentRepo {
  Future<List<Course>> fetchDepartmentData({required int id});

}