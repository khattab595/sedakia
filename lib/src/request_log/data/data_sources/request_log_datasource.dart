import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/core/network/api_response.dart';
import 'package:app/core/utils/constants.dart';
import '../models/course_dto.dart';

part 'request_log_datasource.g.dart';

@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  RequestLogDatasource{

  @factoryMethod
  factory RequestLogDatasource(Dio dio) = _RequestLogDatasource;

  @GET('/fetchRequestLog')
  Future<ApiResponse<List<CourseDto>>> fetchRequestLog();

  @GET('/addRequest')
  Future<ApiResponse> addRequest();

}