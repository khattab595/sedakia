import 'package:app/core/components/base_widget_bloc.dart';

import '../../../../../core/utils/navigator.dart';
import '../../../../main_index.dart';
import '../../bloc/forgot_password_bloc.dart';
import 'enter_phone_number_screen.dart';

class EnterPhoneNumberPage
    extends BaseBlocWidget<UnInitState, ForgotPasswordCubit> {
  EnterPhoneNumberPage({Key? key}) : super(key: key);

  String phone = '';

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return EnterPhoneNumberScreen(
      onEnterPhoneNumber: (phoneNumber) {
        phone = phoneNumber.phone ?? "";
        bloc.enterPhoneNumber(phoneNumber);
      },
    );
  }

  @override
  void onSuccessDismissed() {
    Navigators.pushNamed(Routes.enterPinCodePage, arguments: phone);
  }
}
