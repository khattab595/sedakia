
import '../../../../../core/utils/helper_methods.dart';
import '../../../../../core/widgets/buttons/label_button.dart';
import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../main_index.dart';
import '../../../data/models/login_params.dart';

class LoginScreen extends BaseStatelessWidget {
  final Function(LoginParams)? onLogin;

  LoginScreen({Key? key, this.onLogin}) : super(key: key);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController phoneNumberController = TextEditingController(text: 'sawa1001@hotmail.com');
  TextEditingController passwordController = TextEditingController(text: '123456789');

  @override
  Widget build(BuildContext context) {

    return  Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            controller: phoneNumberController,
            hintText: strings.point_sale_mobile_number,
          ),
          CustomTextField(
            controller: passwordController,
            hintText: strings.password,
            isPassword: true,
            keyboardType: TextInputType.visiblePassword,
          ),
          // LabelButton(
          //   title: strings.forgot_password,
          //   onTap: () {
          //     HelperMethods.launchURL('https://eg.app.com/forgot-password');
          //   },
          // ),
          PrimaryButton(
            title: strings.login,
            margin: 20.paddingTop,
            onPressed: () => onPressed(),
          ),
        ],
      ),
    );
  }
  onPressed() async {
    if (formKey.currentState!.validate()) {
      onLogin!(LoginParams(
        email: phoneNumberController.text,
        password: passwordController.text,
        platform: await HelperMethods.getPlatform(),
      ));
    }
  }
}
