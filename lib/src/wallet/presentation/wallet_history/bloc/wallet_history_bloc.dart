import 'package:app/core/exceptions/empty_list_exception.dart';
import 'package:app/core/resources/data_state.dart';
import 'package:app/src/wallet/domain/entities/transaction.dart';
import 'package:injectable/injectable.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

import '../../../../../core/bloc/base_cubit.dart';
import '../../../domain/use_cases/wallet_usecase.dart';

@Injectable()
class WalletHistoryCubit extends BaseCubit {
  final WalletUseCase usecase;

  WalletHistoryCubit(this.usecase);

  List<Transaction> allTransaction = [];
  bool isLastPage = false;
  int page = 0;
  RefreshController refreshController = RefreshController(initialRefresh: false);
  fetchHistory({bool isRefresh = true, int? id}) async {
    isRefresh ? {page = 1, allTransaction.clear()} : page++;
    executeBuilder(() => usecase.fetchHistory(page), onSuccess: (data){
      bool isLastPage = data.pagination?.totalPages == page;
      List<Transaction> transactions = data.data?.map((e) => Transaction.fromDto(e)).toList() ?? [];
      allTransaction.addAll(transactions);
      isLastPage ? refreshController.loadNoData() : refreshController.loadComplete();
      if(allTransaction.isEmpty){
       throw EmptyListException();
      }
      emit(DataSuccess<List<Transaction>>(allTransaction));
    });
  }

}
