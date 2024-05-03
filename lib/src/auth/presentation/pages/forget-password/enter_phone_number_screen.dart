import 'package:app/core/widgets/texts/hint_texts.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../../core/widgets/text-field/mobile_text_field.dart';
import '../../../../main_index.dart';

class EnterPhoneNumberScreen extends BaseStatelessWidget {
  final Function(String) onEnterPhoneNumber;

  EnterPhoneNumberScreen({Key? key, required this.onEnterPhoneNumber})
      : super(key: key);

  TextEditingController phoneNumberController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            kToolbarHeight.ph,
            PrimaryBoldText(label: strings.forgot_password, fontSize: 22),
            16.ph,
            HintRegularText(label: strings.forgot_password_message, fontSize: 16),
            30.ph,
            MobileTextField(
              controller: phoneNumberController,
            ),
            PrimaryButton(
              title: strings.confirm,
              margin: 20.paddingTop + 10.paddingBottom,
              radius: 8,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  onEnterPhoneNumber(phoneNumberController.text);
                }
              },
            ),

            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HintMediumText(label: strings.remember_password),
                    5.pw,
                    PrimaryMediumText(label: strings.sign_in),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
