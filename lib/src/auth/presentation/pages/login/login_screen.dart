
import 'package:app/core/widgets/images/logo.dart';

import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../main_index.dart';
import '../../../data/models/login_params.dart';

class LoginScreen extends BaseStatelessWidget {
  final Function(LoginParams)? onLogin;

  LoginScreen({Key? key, this.onLogin}) : super(key: key);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if(kDebugMode){
      phoneNumberController.text = '01020304050';
      passwordController.text = '12345677';
    }

    return  SingleChildScrollView(
      padding: 20.paddingAll,
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(),
            20.ph,Text(
              strings.sign_in,
              style: context.bodyLarge.copyWith(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            40.ph,
            CustomTextField(
              controller: phoneNumberController,
              title: strings.point_sale_mobile_number,
            ),
            CustomTextField(
              controller: passwordController,
              title: strings.password,
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
              margin: 30.paddingTop,
              onPressed: () => onPressed(),
            ),
          ],
        ),
      ),
    );
  }
  onPressed() async {
    if (formKey.currentState!.validate()) {
      onLogin!(LoginParams(
        phone: phoneNumberController.text,
        password: passwordController.text,
      ));
    }
  }
}
