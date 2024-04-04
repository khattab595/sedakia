
import '../../../../core/network/api_response.dart';
import '../../../../core/network/id_dto.dart';
import '../../data/models/create_request_params.dart';
import '../../data/models/payment_method_dto.dart';
import '../../data/models/transaction_dto.dart';
import '../../data/models/wallet_method_fields_dto.dart';

abstract class BaseWalletRepo {

  Future<ApiResponse<List<PaymentMethodDto>>> fetchPaymentMethods(int page);

  Future<ApiResponse<List<PaymentMethodFieldsDto>>> fetchCreatePaymentField();

  Future<String> setDefault(IdDto idDto);

  Future<String> deletePaymentMethod(IdDto idDto);

  Future<ApiResponse<List<TransactionDto>>> fetchTransactions(int page);

  Future<ApiResponse<List<TransactionDto>>> fetchHistory(int page);

  Future<String> createRequest(CreateRequestParams params);
}
