import 'package:app/core/exceptions/empty_list_exception.dart';
import 'package:app/core/resources/data_state.dart';
import 'package:app/src/wallet/domain/entities/transaction.dart';
import 'package:injectable/injectable.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

import '../../../../../core/bloc/base_cubit.dart';
import '../../../domain/entities/payment_method.dart';
import '../../../domain/use_cases/wallet_usecase.dart';

@Injectable()
class PaymentMethodsCubit extends BaseCubit {
  final WalletUseCase usecase;

  PaymentMethodsCubit(this.usecase);

  List<PaymentMethod> allPaymentMethods = [];
  bool isLastPage = false;
  int page = 0;
  RefreshController refreshController = RefreshController(initialRefresh: false);
  fetchPaymentMethods({bool isRefresh = true}) async {
    isRefresh ? {page = 1, allPaymentMethods.clear()} : page++;
    executeBuilder(() => usecase.fetchPaymentMethods(page), onSuccess: (data){
      bool isLastPage = data.pagination?.totalPages == page;
      List<PaymentMethod> transactions = data.data?.map((e) => PaymentMethod.fromDto(e)).toList() ?? [];
      allPaymentMethods.addAll(transactions);
      isLastPage ? refreshController.loadNoData() : refreshController.loadComplete();
      if(allPaymentMethods.isEmpty){
       throw EmptyListException();
      }
      emit(DataSuccess<List<PaymentMethod>>(allPaymentMethods));
    });
  }

}
