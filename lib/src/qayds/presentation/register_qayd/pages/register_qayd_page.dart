
import 'package:app/core/components/base_widget_bloc.dart';

import '../../../../../../core/utils/navigator.dart';
import '../../../../auth/data/models/login_params.dart';
import '../../../../main_index.dart';
import '../bloc/register_qayd_bloc.dart';
import 'register_qayd_screen.dart';

// ignore: must_be_immutable
class RegiserQaydPage extends BaseBlocWidget<UnInitState, RegiserQaydCubit> {
  RegiserQaydPage({Key? key}) : super(key: key);


  @override
  String? title(BuildContext context) => strings.register_qayd;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return RegiserQaydScreen(
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
