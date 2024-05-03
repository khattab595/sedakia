import 'package:app/core/widgets/images/logo.dart';
import 'package:app/core/widgets/texts/black_texts.dart';
import 'package:app/src/auth/presentation/register/pages/complete_register_page.dart';

import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../../core/widgets/texts/hint_texts.dart';
import '../../../../main_index.dart';
import '../../../data/models/register_params.dart';
import '../../../data/models/verification_code_params.dart';
import '../../bloc/auth_bloc.dart';
import '../widgets/stepper_lines.dart';
import 'complete_screen.dart';
import 'enter_pin_code_screen.dart';
import 'register_screen.dart';

// ignore: must_be_immutable
class RegisterPage extends BaseBlocWidget<UnInitState, AuthCubit> {
  RegisterPage({Key? key}) : super(key: key);

  PageController controller = PageController();

  StreamStateInitial<int> controllerStream = StreamStateInitial<int>();

  String phone = '';
  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return Padding(
      padding: 16.paddingAll,
      child: Column(
        children: [
          50.ph,
          const Logo(),
          20.ph,
          BlackBoldText(
            label: strings.create_new_account,
            fontSize: 20,
          ),
          5.ph,
          HintMediumText(
              label: strings.create_account_using_mobile_number, fontSize: 14),
          StepperLines(
            controllerStream: controllerStream,
          ),
          Expanded(
              child: PageView(
            controller: controller,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              RegisterScreen(onRegister: (RegisterParams params) {
                phone = params.phone ?? '';
                bloc.register(params);
              }),
              ActivationCodeScreen(
                onPinCode: (String pinCode) {
                  bloc.verificationCode(VerificationCodeParams(
                      phoneNumber: phone, code: pinCode));
                },
                onResend: (String pinCode) {
                },
              ),
              CompleteRegisterPage(),
            ],
          ))
        ],
      ),
    );
  }

  @override
  void onSuccessDismissed() {
    controllerStream.setData(controller.page!.toInt() + 1);
    controller.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn);
  }
}
