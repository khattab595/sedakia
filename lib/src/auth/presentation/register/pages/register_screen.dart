import 'package:app/core/utils/helper_methods.dart';

import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../../core/widgets/text-field/mobile_text_field.dart';
import '../../../../../core/widgets/texts/hint_texts.dart';
import '../../../../../core/widgets/texts/primary_texts.dart';
import '../../../../main_index.dart';
import '../../../data/models/register_params.dart';
import '../../widgets/check_box_terms_conditions.dart';

class RegisterScreen extends BaseStatelessWidget {
  final Function(RegisterParams)? onRegister ;
  RegisterScreen({Key? key, this.onRegister}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  StreamStateInitial<bool> isAgreeStream = StreamStateInitial<bool>();
  int? countryId;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print('complete screen build');
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTextField(
            controller: nameController,
            hintText: strings.name,
          ),
          CustomTextField(
            controller: emailController,
            hintText: strings.password,
            isPassword: false,
          ),
          MobileTextField(
            controller: phoneController,
          ),
          CustomTextField(
            controller: passwordController,
            hintText: strings.password,
            isPassword: true,
          ),
          CheckBoxTermsConditions(
            onChanged: (value) {
              isAgreeStream.setData(value ?? false);
            },
          ),
          // Text(
          //   strings.password_note,
          //   style: context.labelSmall,
          // ),

          StreamBuilder<bool>(
            stream: isAgreeStream.stream,
            initialData: false,
            builder: (context, snapshot) {
              return PrimaryButton(
                title:  strings.next,
                margin: 10.paddingTop,
                onPressed: snapshot.data != true ? null :
                    () => onPressed() ,
                //buttonTextColor: AppColors.appTextColorWhite,
              );
            }
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
                  PrimaryMediumText(label: strings.sign_in),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  onPressed() async {
  //  if(formKey.currentState!.validate()) {
      onRegister!(RegisterParams(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        country: '1',
        passwordConfirmation: passwordController.text,
        platform: await HelperMethods.getPlatform(),
      ));
 //  }
  }
}
