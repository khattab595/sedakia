

import 'package:app/src/wallet/presentation/widgets/wallet_history/wallet_history.dart';

import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/transaction.dart';
import '../../wallet_history/bloc/wallet_history_bloc.dart';

class WalletHistoryPage extends BaseBlocWidget<DataSuccess<List<Transaction>>, WalletHistoryCubit> {
  WalletHistoryPage({Key? key}) : super(key: key);


  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchHistory();
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<Transaction>> state) {
    return WalletHistoryScreen(
      logs: state.data ?? [],
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.notifications;
  }
}
