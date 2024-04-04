import 'package:app/src/wallet/data/models/payment_method_dto.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/api_response.dart';
import '../../../../core/network/id_dto.dart';
import '../../../wallet/domain/repositories/base_wallet_repo.dart';
import '../../data/models/create_request_params.dart';
import '../../data/models/transaction_dto.dart';
import '../../data/models/wallet_method_fields_dto.dart';
import '../entities/payment_method_fields.dart';
@Injectable()
class WalletUseCase {
  final BaseWalletRepo repository ;
  WalletUseCase(this.repository);

  Future<String> createRequest(CreateRequestParams params) async{
    return await repository.createRequest(params);
  }

  Future<String> setDefault(IdDto idDto) async{
    return await repository.setDefault(idDto);
  }

  Future<String> deletePaymentMethod(IdDto idDto) async{
    return await repository.deletePaymentMethod(idDto);
  }

  Future<List<PaymentMethodFields>> fetchCreatePaymentField() async{
    final data = await repository.fetchCreatePaymentField();
    return data.data?.map((e) => PaymentMethodFields.fromDto(e)).toList()  ?? [];
  }

  Future<ApiResponse<List<PaymentMethodDto>>> fetchPaymentMethods(int page) async{
    return await repository.fetchPaymentMethods(page);
  }

  Future<ApiResponse<List<TransactionDto>>>fetchTransactions(int page) async{
    return await repository.fetchTransactions(page);
  }

  Future<ApiResponse<List<TransactionDto>>> fetchHistory(int page) async{
    return await repository.fetchHistory(page);
  }
}