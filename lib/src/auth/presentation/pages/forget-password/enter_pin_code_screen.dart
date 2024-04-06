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
            30.ph,
            SemiBoldHintText(
              label: strings.confirm_register_qayd_desc,
              textAlign: TextAlign.center,
            ),
            30.ph,
            CustomPinCode(
              pinCodeController: pinCodeController,
            ),
            20.ph,
            // GestureDetector(
            //   onTap: () {
            //     pinCodeController.clear();
            //   },
            //   child: Text(
            //     strings.resend,
            //     textAlign: TextAlign.center,
            //   ),
            //
            // ),
            PrimaryButton(
              title: strings.confirm,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  onPinCode(pinCodeController.text);
                }
              },
            ),
            100.ph,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SemiBoldHintText(
                  label: '00:24',
                  textAlign: TextAlign.center,
                  fontSize: 14,
                ),
                5.pw,
                const AppIcon(
                  icon: AppIcons.timer,
                  size: 14,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
