
import 'package:app/core/widgets/images/logo.dart';
import 'package:app/core/widgets/texts/hint_texts.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../../core/widgets/buttons/label_button.dart';
import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../../core/widgets/text-field/mobile_text_field.dart';
import '../../../../../core/widgets/texts/black_texts.dart';
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
      phoneNumberController.text = '9647712345678';
      passwordController.text = '123456789';
    }
//7712345678
    return  Form(
      key: formKey,
      child: SingleChildScrollView(
        padding: 20.paddingAll,
        child: Column(
          children: [
            50.ph,
            const Logo(),
            20.ph,
            BlackBoldText(
              label: strings.sign_in,
              fontSize: 20,
            ),
            10.ph,
            HintMediumText(label: strings.log_in_using_your_mobile_number, fontSize: 14),
            30.ph,
            MobileTextField(
              controller: phoneNumberController,
            ),
            CustomTextField(
              controller: passwordController,
              hintText: strings.password,
              keyboardType: TextInputType.number,
              margin: 7.paddingBottom,
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: LabelButton(
                title: strings.forgot_password,
                style: primaryMediumStyle,
                onTap: () {
                  Navigator.pushNamed(context, Routes.enterPhoneNumberPage);
                },
              ),
            ),
            PrimaryButton(
              title: strings.sign_in,
              margin: 30.paddingVert,
              onPressed: () => onPressed(),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, Routes.register);
              },
              child: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HintMediumText(label: strings.dont_have_an_account),
                    5.pw,
                    PrimaryMediumText(label: strings.create_new_account),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  onPressed() async {
   if (formKey.currentState!.validate()) {
      onLogin!(LoginParams(
        phoneNumber: phoneNumberController.text,
        password: passwordController.text,
        fcmToken: 'harby',
      ));
   }
  }
}
