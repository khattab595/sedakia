import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/utils/constants.dart';
import '../../domain/entities/shipment_qr_code.dart';
import '../models/home_dto.dart';

part 'home_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  HomeDatasource{

  @factoryMethod
  factory HomeDatasource(Dio dio) = _HomeDatasource;

  @GET('/app/dashboard')
  Future<ApiResponse<HomeDto>> fetchHomeData();

  @POST('/api/v1/user/DisconnectClient')
  Future<ApiResponse<String>> reasonForDisconnection(@Body() String reason);

  @POST('/api/v1/user/ScanToReceive')
  Future<ApiResponse<List<ShipmentQRCode>>> scanToReceive(@Body() String id);

  @POST('/api/v1/user/ScanToPick')
  Future<ApiResponse<List<ShipmentQRCode>>> scanToPick(@Body() String id);

}