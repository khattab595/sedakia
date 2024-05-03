import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/core/network/api_response.dart';
import 'package:app/core/utils/constants.dart';
import '../models/grade_dto.dart';

part 'grades_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  GradesDatasource{

  @factoryMethod
  factory GradesDatasource(Dio dio) = _GradesDatasource;

  @GET('/Exam')
  Future<ApiResponse<List<GradeDto>>> fetchGradesData();
}