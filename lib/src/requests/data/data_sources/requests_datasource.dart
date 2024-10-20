import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/utils/constants.dart';
import '../models/order_dto.dart';

part 'requests_datasource.g.dart';

@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class RequestsDatasource {
  @factoryMethod
  factory RequestsDatasource(Dio dio) = _RequestsDatasource;

  @GET('products/mobile/v1/orders')
  Future<ApiResponse<OrderDto>> fetchOrder();

  @POST('products/v1/orders/{id}/change-status')
  Future<ApiResponse> changeStatus(@Path() int id);
}
