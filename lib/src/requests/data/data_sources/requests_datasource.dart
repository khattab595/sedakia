import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/utils/constants.dart';
import '../../../product/data/models/search_params.dart';
import '../models/order_details_dto.dart';
import '../models/order_dto.dart';
import '../models/status_params.dart';

part 'requests_datasource.g.dart';

@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class RequestsDatasource {
  @factoryMethod
  factory RequestsDatasource(Dio dio) = _RequestsDatasource;

  @GET('products/mobile/v1/orders')
  Future<ApiResponse<OrderDto>> fetchOrder(@Queries() SearchParams params);

  @GET('products/mobile/v1/order/{id}')
  Future<ApiResponse<OrderDetailsDto>> orderDetails(@Path("id") int id);

  @POST('products/v1/orders/{id}/change-status')
  Future<ApiResponse> changeStatus(@Body() StatusParams params,@Path("id") int id);
}
