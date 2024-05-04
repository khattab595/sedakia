import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../main_index.dart';
import '../../../data/models/verification_code_params.dart';
import '../../bloc/forgot_password_bloc.dart';
import 'enter_pin_code_screen.dart';

class EnterPinCodePage
    extends BaseBlocWidget<UnInitState, ForgotPasswordCubit> {
  EnterPinCodePage({Key? key}) : super(key: key);

  @override
  Widget buildWidget(
      BuildContext context, UnInitState state) {
    return EnterPinCodeScreen(
      onPinCode: (String code) {
        bloc.verificationCode(VerificationCodeParams(
          phoneNumber: getArguments(context),
          code: code,
        ));
      },
    );
  }


  @override
  void onSuccessDismissed() {
    Navigators.pushNamed(Routes.changePasswordPage);
  }
}
