import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/core/network/api_response.dart';

part 'reports_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: 'kBASE_URL')
abstract class  ReportsDatasource{

  @factoryMethod
  factory ReportsDatasource(Dio dio) = _ReportsDatasource;

  @GET('/api/v1/Operations/GetAllOperations')
  Future<ApiResponse<String>> fetchAboutLogeste();
}