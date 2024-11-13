 import 'package:app/core/widgets/images/logo.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';
 import '../../../../../core/widgets/text-field/mobile_text_field.dart';
import '../../../../../core/widgets/text-field/password_text_field.dart';
import '../../../../../core/widgets/texts/black_texts.dart';
import '../../../../main_index.dart';
import '../../../data/models/login_params.dart';

class LoginScreen extends BaseStatelessWidget {
  final Function(LoginParams) onLogin;

  LoginScreen({Key? key, required this.onLogin}) : super(key: key);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool value = false;

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      emailController.text = 'midosok55@gmail.com';
      passwordController.text = '123456';
    }
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        padding: 20.paddingAll,
        child: Column(
          children: [
            50.ph,
            const Logo(
              size: 190,
            ),
            BlackSemiBoldText(
              label: strings.welcome_back,
              fontSize: 26,
              labelColor: primaryColorDark,
            ),
            11.ph,
            PrimaryMediumText(
              label: strings.sign_in_to_continue,
              fontSize: 14,
              labelColor: greyColorB1,
            ),
            50.ph,
            MobileTextField(
              controller: emailController,
            ),
            8.ph,
            PasswordTextField(
              controller: passwordController,
              margin: 0.paddingBottom,
            ),
            // 10.ph,
            // Row(
            //   children: [
            //     LabelButton(
            //       title: strings.forgot_password,
            //       style: primaryMediumStyle.copyWith(fontSize: 12),
            //       onTap: () {
            //         pushNamed(Routes.enterPhoneNumberPage);
            //       },
            //     ),
            //   ],
            // ),
            PrimaryButton(
              radius: 15,
              height: 50,
              title: strings.sign_in,
              margin: 85.paddingTop,
              onPressed: () {
                onPressed();
                //  pushNamed(Routes.navigationPages);
              },
            ),
          ],
        ),
      ),
    );
  }

  onPressed() async {
    if (formKey.currentState!.validate()) {
      onLogin(LoginParams(
        username: emailController.text,
        password: passwordController.text,
      ));
    }
  }
}
