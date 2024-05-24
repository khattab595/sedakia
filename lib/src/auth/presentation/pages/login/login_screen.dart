
import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/images/logo.dart';
import 'package:app/core/widgets/texts/hint_texts.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../../core/resources/validation.dart';
import '../../../../../core/widgets/buttons/label_button.dart';
import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../../core/widgets/text-field/mobile_text_field.dart';
import '../../../../../core/widgets/text-field/password_text_field.dart';
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
      phoneNumberController.text = '7788996655';
      passwordController.text = '123123123';
    }
    bool value = false;
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
            PasswordTextField(
              controller: passwordController,
              margin: 0.paddingBottom,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Expanded(
                  child: Row(
                    children: [
                      StatefulBuilder(
                        builder: (context, setState) {
                          return Transform.scale(
                            scale: 1.2,
                            child: Checkbox(
                              value: value,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              activeColor: context.primaryColor,
                              side: BorderSide(
                                color: context.dividerColor,
                                width: 1,
                              ),
                              visualDensity: VisualDensity.compact,
                              onChanged: (s) {
                                setState(() {
                                  value = s!;
                                });
                              },
                            ),
                          );
                        }
                      ),
                      Flexible(
                        child: BlackSemiBoldText(
                          fontSize: 14,
                          label: strings.remember_me,
                        ),
                      ),
                    ],
                  ),
                ),

                LabelButton(
                  title: strings.forgot_password,
                  style: primaryMediumStyle.copyWith(fontSize: 14),
                  onTap: () {
                    pushNamed(Routes.enterPhoneNumberPage);
                    // Navigator.pushNamed(context, Routes.enterPhoneNumberPage);
                  },
                ),
              ],
            ),
            PrimaryButton(
              title: strings.sign_in,
              margin: 30.paddingVert,
              onPressed: (){
                pushNamedAndRemoveUntil(Routes.navigationPages);
              },
            ),
            // InkWell(
            //   onTap: () {
            //     Navigator.pushNamed(context, Routes.register);
            //   },
            //   child: FittedBox(
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         HintMediumText(label: strings.dont_have_an_account,
            //         fontSize: 14,
            //         ),
            //         5.pw,
            //         PrimaryMediumText(label: strings.create_new_account,
            //           fontSize: 14,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
  // onPressed() async {
  //  if (formKey.currentState!.validate()) {
  //     onLogin!(LoginParams(
  //       phoneNumber: phoneNumberController.text.toIraqCode,
  //       password: passwordController.text,
  //       fcmToken: 'harby',
  //     ));
  //  }
  // }
}
