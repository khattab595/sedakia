import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
 import '../../../../core/network/api_response.dart';
import '../../../../core/utils/constants.dart';
import '../models/customer_dto.dart';

part 'customers_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  CustomersDatasource{

  @factoryMethod
  factory CustomersDatasource(Dio dio) = _CustomersDatasource;

  @GET('products/v1/get-customers')
  Future<ApiResponse<List<CustomerDto>>> fetchCustomer();

}