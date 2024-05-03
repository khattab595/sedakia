import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../main_index.dart';
import '../../../data/models/change_password_params.dart';
import '../../bloc/forgot_password_bloc.dart';
import 'change_password_screen.dart';
import 'forgot_password_screen.dart';

class ForgotPasswordPage
    extends BaseBlocWidget<UnInitState, ForgotPasswordCubit> {
  ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  String? title(BuildContext context) => strings.forgot_password;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return ForgotPasswordScreen(
      onChangePassword: (ChangePasswordParams params) {
        bloc.changePassword(params);
      },
    );
  }

  @override
  void onSuccessDismissed() {
    Navigators.pushNamedAndRemoveUntil(Routes.loginPage);
  }
}
