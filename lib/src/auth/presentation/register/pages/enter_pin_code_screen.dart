import '../../../../../core/widgets/buttons/label_button.dart';
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../main_index.dart';
import '../../../../../core/widgets/text-field/custom_pin_code.dart';

class ActivationCodeScreen extends BaseStatelessWidget {
  final Function(String) onPinCode;
  final Function(String) onResend;

  ActivationCodeScreen({Key? key, required this.onPinCode, required this.onResend}) : super(key: key);

  TextEditingController pinCodeController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print('complete screen build');
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: RegularHintText(
                label: strings.verification_msg,
              ),
            ),
            30.ph,
            CustomPinCode(
              pinCodeController: pinCodeController,
            ),
            40.ph,
            PrimaryButton(
              title: strings.verify,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  onPinCode(pinCodeController.text);
                }
              },
            ),
            // 10.ph,
            // LabelButton(
            //   title: strings.resend,
            //   style: hintMediumStyle,
            //   onTap: () {
            //     pinCodeController.clear();
            //     onResend(pinCodeController.text);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
