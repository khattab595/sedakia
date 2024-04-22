
import 'package:app/core/widgets/images/logo.dart';
import 'package:app/core/widgets/texts/texts.dart';

import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../main_index.dart';
import '../../../../splash/presentation/widgets/intro_bg.dart';
import '../../../data/models/login_params.dart';

class LoginScreen extends BaseStatelessWidget {
  final Function(LoginParams)? onLogin;

  LoginScreen({Key? key, this.onLogin}) : super(key: key);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // if(kDebugMode){
    //   phoneNumberController.text = '01020304050';
    //   passwordController.text = '12345677';
    // }

    return  Form(
      key: formKey,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          IntroBg(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: 20.paddingHoriz + 40.paddingVert,
              decoration: Decorations.kDecorationTopRadius(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    PrimaryBoldText(
                      label: strings.sign_in_hajj,
                      fontSize: 20,
                    ),
                    30.ph,
                    CustomTextField(
                      controller: phoneNumberController,
                      title: strings.id_number,
                      keyboardType: TextInputType.number,
                      margin: 40.paddingVert,
                    ),
                    CustomTextField(
                      controller: passwordController,
                      title: strings.reservation_number,
                      keyboardType: TextInputType.number,
                      margin: 40.paddingBottom,
                    ),
                    PrimaryButton(
                      title: strings.sign_in,
                      margin: 30.paddingTop,
                      onPressed: () => onPressed(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  onPressed() async {
   // if (formKey.currentState!.validate()) {
      onLogin!(LoginParams(
        phone: phoneNumberController.text,
        password: passwordController.text,
      ));
  //  }
  }
}
