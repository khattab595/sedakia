
import 'package:injectable/injectable.dart';

import '../../../../core/network/api_response.dart';
import '../../../../core/network/id_dto.dart';
import '../../domain/repositories/base_wallet_repo.dart';
import '../data_sources/wallet_datasource.dart';
import '../models/create_request_params.dart';
import '../models/payment_method_dto.dart';
import '../models/transaction_dto.dart';
import '../models/wallet_method_fields_dto.dart';


@Injectable(as: BaseWalletRepo)
class WalletRepo extends BaseWalletRepo{
  final WalletDatasource  datasource;
  WalletRepo(this.datasource);

  @override
  Future<ApiResponse<List<PaymentMethodDto>>> fetchPaymentMethods(int page) async {
    return await datasource.fetchPaymentMethods(page);
  }

  @override
  Future<ApiResponse<List<TransactionDto>>> fetchHistory(int page) async{
    return await datasource.fetchHistory(page);
  }

  @override
  Future<ApiResponse<List<TransactionDto>>> fetchTransactions(int page) async{
    return await datasource.fetchTransactions(page);
  }

  @override
  Future<String> setDefault(IdDto idDto) async{
    final data = await datasource.setDefault(idDto);
    return data.message ?? "Success";
  }

  @override
  Future<String> deletePaymentMethod(IdDto idDto) async{
    final data = await datasource.deletePaymentMethod(idDto);
    return data.message ?? "Success";
  }

  @override
  Future<ApiResponse<List<PaymentMethodFieldsDto>>> fetchCreatePaymentField() async{
    return await datasource.fetchCreatePaymentField();
  }

  @override
  Future<String> createRequest(CreateRequestParams params) async{
    final data = await datasource.createRequest(params);
    return data.message ?? "Success";
  }

}