import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/utils/constants.dart';
import '../../domain/entities/shipment_qr_code.dart';
import '../models/department_dto.dart';
import '../models/recently_dto.dart';
import '../models/teacher_dto.dart';

part 'home_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  HomeDatasource{

  @factoryMethod
  factory HomeDatasource(Dio dio) = _HomeDatasource;

  @GET('/departments')
  Future<ApiResponse<List<DepartmentDto>>> fetchDepartmentsData();

  @GET('/teachers')
  Future<ApiResponse<List<TeacherDto>>> fetchTeachersData();

  @GET('/recently')
  Future<ApiResponse<RecentlyDto>> fetchRecentlyData();

  @GET('/recentlyCourses')
  Future<ApiResponse<List<RecentlyDto>>> fetchRecentlyCoursesData();






  @POST('/api/v1/user/DisconnectClient')
  Future<ApiResponse<String>> reasonForDisconnection(@Body() String reason);

  @POST('/api/v1/user/ScanToReceive')
  Future<ApiResponse<List<ShipmentQRCode>>> scanToReceive(@Body() String id);

  @POST('/api/v1/user/ScanToPick')
  Future<ApiResponse<List<ShipmentQRCode>>> scanToPick(@Body() String id);

}