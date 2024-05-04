import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/utils/constants.dart';
import '../../../courses/data/models/course_dto.dart';
part 'departments_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  DepartmentsDatasource{

  @factoryMethod
  factory DepartmentsDatasource(Dio dio) = _DepartmentsDatasource;

  @GET('/departmentCourses')
  Future<ApiResponse<List<CourseDto>>> fetchDepartmentCourses(@Query('department_id') int id,);
}