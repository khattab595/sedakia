import 'package:app/src/my_courses/domain/entities/course.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/utils/constants.dart';
import '../../../my_courses/data/models/course_dto.dart';
part 'department_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  DepartmentDatasource{

  @factoryMethod
  factory DepartmentDatasource(Dio dio) = _DepartmentDatasource;

  @GET('/departmentCourses?department_id={id}')
  Future<ApiResponse<List<CourseDto>>> fetchDepartmentCourses(
      @Path('id') int id,
      );
}