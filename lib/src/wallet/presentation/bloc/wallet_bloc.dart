import 'package:injectable/injectable.dart';

import '../../../../core/bloc/base_cubit.dart';
import '../../../../core/commen/common_state.dart';
import '../../../../core/resources/data_state.dart';
import '../../domain/use_cases/wallet_usecase.dart';

@Injectable()
class WalletCubit extends BaseCubit {
  final WalletUseCase usecase;

  WalletCubit(this.usecase);
  int walletId = 0;
  int offset = 0;
  int take = 10;

  // StreamStateInitial<List<WalletLogDto>?> walletLogStream = StreamStateInitial();
  // fetchCurrentBalance() async {
  //   executeBuilder(() => usecase.fetchCurrentBalance(), onSuccess: (data) async {
  //     walletId = data.id ?? 0;
  //     allLogs = await usecase.fetchWalletOperations(WalletLogParams(
  //       offset: offset.toString(),
  //       take: take.toString(),
  //       walletId: data.id.toString(),
  //     ));
  //     emit(DoubleDataSuccess(
  //       data1: [],
  //       data2: [],
  //     ));
  //   });
  // }
  //
  // List<WalletLogDto> allLogs = [];
  // List<WalletLogDto> logs = [];
  // fetchWalletOperations({bool isRefresh = true, int? id}) async {
  //   isRefresh ? {offset = 0, allLogs.clear()} : offset += take;
  //
  //   WalletLogParams  params = WalletLogParams(
  //     offset: offset.toString(),
  //     take: take.toString(),
  //     walletId: (id ?? walletId ).toString(),
  //   );
  //   try {
  //     final data = await usecase.fetchWalletOperations(params);
  //     logs = data;
  //     allLogs.addAll(logs);
  //     print('orders.length ${allLogs.length}');
  //     walletLogStream.setData(allLogs);
  //   } on Exception catch (e) {
  //     print('fetchOrders error $e');
  //     walletLogStream.setError(e);
  //   }
  //   print('fetchOrders $offset');
  // }

}
