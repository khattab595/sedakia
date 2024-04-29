import 'package:app/core/utils/helper_methods.dart';

import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../main_index.dart';
import '../../../data/models/register_params.dart';

class RegisterScreen extends BaseStatelessWidget {
  final Function(RegisterParams)? onRegister ;
  RegisterScreen({Key? key, this.onRegister}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  int? countryId;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTextField(
            controller: nameController,
            hintText: strings.name,
            prefixIconPath: AppIcons.user_bold,
            margin: const EdgeInsets.only(top: 20, bottom: 15),
          ),
          CustomTextField(
            controller: emailController,
            hintText: strings.email,
            prefixIconPath: AppIcons.email_bold,
            keyboardType: TextInputType.emailAddress,
            margin: const EdgeInsets.only(bottom: 15),
          ),
          CustomTextField(
            controller: phoneController,
            hintText: strings.phone_number,
            prefixIconPath: AppIcons.telephone,
            keyboardType: TextInputType.number,
            margin: const EdgeInsets.only(bottom: 15),
          ),
          // DropDownField(
          //   hint: strings.select_country,
          //   items: countries.map((e) => DropDownItem(title: e.name, id: e.id.toString())).toList(),
          //   onChanged: (value) {
          //     countryId = int.parse(value.id ?? '0');
          //   },
          // ),
          15.ph,
          CustomTextField(
            controller: passwordController,
            hintText: strings.password,
            prefixIconPath: AppIcons.lock_bold,
            margin: const EdgeInsets.only(bottom: 15),
            isPassword: true,
          ),
          // Text(
          //   strings.password_note,
          //   style: context.labelSmall,
          // ),
          PrimaryButton(
            title:  strings.next,
            margin: const EdgeInsets.only(top: 15, right: 40, left: 40),
            onPressed: () => onPressed(),
            //buttonTextColor: AppColors.appTextColorWhite,
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
