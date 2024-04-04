
import 'package:app/src/wallet/presentation/pages/wallet_screen.dart';

import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../bloc/wallet_bloc.dart';

class WalletPage extends BaseBlocWidget<UnInitState, WalletCubit> {
   WalletPage({Key? key}) : super(key: key);


  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchCurrentBalance();
  // }

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return WalletScreen(
      // wallet: Transaction(),
      // logs: [],
      // isFull: bloc.logs.isEmpty,
      // walletLogStream: bloc.walletLogStream,
      // onLoading: () {
      //   bloc.fetchWalletOperations(isRefresh: false);
      // },
      // onRefresh: () {
      //   bloc.fetchWalletOperations();
      // },
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.wallet;
  }
}
