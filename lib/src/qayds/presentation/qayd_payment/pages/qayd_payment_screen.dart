
import 'package:app/core/widgets/images/logo.dart';

import '../../../../../../core/utils/helper_methods.dart';
import '../../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../auth/data/models/login_params.dart';
import '../../../../main_index.dart';


class QaydPaymentScreen extends BaseStatelessWidget {
  final Function(LoginParams)? onLogin;

  QaydPaymentScreen({Key? key, this.onLogin}) : super(key: key);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController qaydNumberController = TextEditingController();

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
            40.ph,
            CustomTextField(
              controller: qaydNumberController,
              title: strings.qayd_number,
            ),
            20.ph,
            CustomTextField(
              controller: phoneNumberController,
              title: strings.method_payment,
              suffixIcon: AppIcon(
                  padding: const EdgeInsets.all(15),
                  icon: AppIcons.drop_down, size: 0) ,
            ),
            20.ph,
            PrimaryButton(
              title: strings.confirm,
              margin: 20.paddingTop,
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
        password: qaydNumberController.text,
        platform: await HelperMethods.getPlatform(),
      ));
    }
  }
}
