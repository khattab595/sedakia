import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../../data/models/change_password_params.dart';
import '../../../data/models/forgot_password_params.dart';
import '../../bloc/forgot_password_bloc.dart';
import 'new_password_screen.dart';

class ChangePasswordPage extends BaseBlocWidget<UnInitState, ForgotPasswordCubit> {
  ChangePasswordPage({Key? key}) : super(key: key);


  @override
  String? title(BuildContext context) => strings.change_password;


  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return ChangePasswordScreen(
      onChangePassword: (ChangePasswordParams params) {
        bloc.changePassword(params);
      },
    );
  }
}
