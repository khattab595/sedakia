import 'package:app/core/widgets/images/logo.dart';
import 'package:app/core/widgets/texts/black_texts.dart';

import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../main_index.dart';
import '../../../data/models/register_params.dart';
import '../../bloc/auth_bloc.dart';
import 'register_screen.dart';

// ignore: must_be_immutable
class RegisterPage extends BaseBlocWidget<UnInitState, AuthCubit> {
  RegisterPage({Key? key}) : super(key: key);

  PageController controller = PageController();
  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return Column(
      children: [
        Logo(),
        BlackBoldText(label: strings.create_new_account),
        BlackBoldText(label: strings.create_new_account),
        Expanded(
            child: PageView(
              controller: controller,
          children: [
            RegisterScreen(onRegister: (RegisterParams params) {
              controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
            }),
            RegisterScreen(onRegister: (RegisterParams params) {

            }),
            RegisterScreen(onRegister: (RegisterParams params) {

            }),
          ],
        ))
      ],
    );
  }

  @override
  void onSuccessDismissed() {
    Navigators.pushNamedAndRemoveUntil(Routes.homePage);
  }
}
