import 'package:app/src/wallet/presentation/widgets/wallet_history/wallet_history.dart';

import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/transaction.dart';
import '../../widgets/wallet_history/wallet_header.dart';
import '../bloc/transactions_bloc.dart';

class TransactionsPage
    extends BaseBlocWidget<DataSuccess<List<Transaction>>, TransactionsCubit> {
  TransactionsPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchTransactions();
  }
  @override
  Widget build(BuildContext context) {
    return mainFrame(
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text('Download Excel', style: context.labelMedium),
      ),
      body: Column(
        children: [
          WalletHeader(),
          Expanded(child: buildConsumer(context)),
        ],
      ),
    );
  }

  @override
  Widget buildWidget(
      BuildContext context, DataSuccess<List<Transaction>> state) {
    return WalletHistoryScreen(
      logs: state.data ?? [],
    );
  }
}