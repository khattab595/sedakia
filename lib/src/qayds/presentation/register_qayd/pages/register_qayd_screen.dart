
import '../../../../../../core/utils/helper_methods.dart';
import '../../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../auth/data/models/login_params.dart';
import '../../../../main_index.dart';


class RegiserQaydScreen extends BaseStatelessWidget {
  final Function(LoginParams)? onLogin;

  RegiserQaydScreen({Key? key, this.onLogin}) : super(key: key);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController idNumberController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return  SingleChildScrollView(
      padding: 20.paddingAll,
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              controller: phoneNumberController,
              title: strings.id_number,
            ),
            CustomTextField(
              controller: phoneNumberController,
              title: strings.mobile_number,
            ),
            CustomTextField(
              controller: amountController,
              title: strings.amount,
            ),
            PrimaryButton(
              title: strings.register_qayd,
              margin: 40.paddingTop,
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
        email: phoneNumberController.text,
        password: amountController.text,
        platform: await HelperMethods.getPlatform(),
      ));
    }
  }
}
