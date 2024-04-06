
import 'package:app/core/components/base_widget_bloc.dart';

import '../../../../../../core/utils/navigator.dart';
import '../../../../auth/data/models/login_params.dart';
import '../../../../main_index.dart';
import '../bloc/qayd_payment_bloc.dart';
import 'qayd_payment_screen.dart';

// ignore: must_be_immutable
class QaydPaymentPage extends BaseBlocWidget<UnInitState, QaydPaymentCubit> {
  QaydPaymentPage({Key? key}) : super(key: key);



  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return QaydPaymentScreen(
      onLogin: (LoginParams params) {
        // bloc.qaydPayment(params);
      },
    );
  }

  @override
  void onSuccessDismissed() {
    Navigators.pushNamedAndRemoveUntil(Routes.homePage);
  }
}
