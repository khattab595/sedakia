import '../../../../../core/widgets/texts/hint_texts.dart';
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../main_index.dart';
import '../../../../../core/widgets/text-field/custom_pin_code.dart';

class EnterPinCodeScreen extends BaseStatelessWidget {
  final Function(String) onPinCode;

  EnterPinCodeScreen({Key? key, required this.onPinCode}) : super(key: key);
  TextEditingController pinCodeController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            kToolbarHeight.ph,
            PrimaryBoldText(label: strings.forgot_password, fontSize: 22),
            16.ph,
            HintRegularText(
                label: strings.forgot_password_verification_msg,
                fontSize: 16,
                textAlign: TextAlign.center,
            ),
            30.ph,
            CustomPinCode(
              pinCodeController: pinCodeController,
            ),
            PrimaryButton(
              title: strings.next,
              margin: 30.paddingTop,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  onPinCode(pinCodeController.text);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
