import 'package:app/core/network/api_response.dart';
import 'package:app/core/network/id_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/utils/constants.dart';
import '../models/create_request_params.dart';
import '../models/payment_method_dto.dart';
import '../models/transaction_dto.dart';
import '../models/wallet_method_fields_dto.dart';

part 'wallet_datasource.g.dart';
@Injectable()
@RestApi(baseUrl: kBaseUrl)
abstract class  WalletDatasource{

  @factoryMethod
  factory WalletDatasource(Dio dio) = _WalletDatasource;

  @GET('/app/financial/list/methods')
  Future<ApiResponse<List<PaymentMethodDto>>> fetchPaymentMethods(@Query('page') int page);

  @GET('/app/financial/methods/objects')
  Future<ApiResponse<List<PaymentMethodFieldsDto>>> fetchCreatePaymentField();

  @POST('/app/financial/edit/method')
  Future<ApiResponse> setDefault(@Body() IdDto idDto);

  @POST('/app/financial/delete/method')
  Future<ApiResponse> deletePaymentMethod(@Body() IdDto idDto);

  @GET('/app/financial/list/transaction')
  Future<ApiResponse<List<TransactionDto>>> fetchTransactions(@Query('page') int page);

  @GET('/app/financial/list/wallet/history')
  Future<ApiResponse<List<TransactionDto>>> fetchHistory(@Query('page') int page);

  @POST('/app/financial/create/request')
  Future<ApiResponse> createRequest(@Body() CreateRequestParams params);
}