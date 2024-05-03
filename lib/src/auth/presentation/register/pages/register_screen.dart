import '../../../../../core/resources/validation.dart';
import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../../core/widgets/text-field/mobile_text_field.dart';
import '../../../../../core/widgets/texts/hint_texts.dart';
import '../../../../../core/widgets/texts/primary_texts.dart';
import '../../../../main_index.dart';
import '../../../data/models/register_params.dart';
import '../../widgets/check_box_terms_conditions.dart';

class RegisterScreen extends BaseStatelessWidget {
  final Function(RegisterParams)? onRegister;

  RegisterScreen({Key? key, this.onRegister}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController parentPhoneController = TextEditingController();

  StreamStateInitial<bool> isAgreeStream = StreamStateInitial<bool>();
  int? countryId;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextField(
              controller: nameController,
              hintText: strings.name,
            ),
            CustomTextField(
              controller: passwordController,
              hintText: strings.password,
              isPassword: true,
            ),
            CustomTextField(
              controller: confirmPasswordController,
              hintText: strings.confirm_password,
              isPassword: true,
              validator: (value) => Validation.validateConfirmPassword(
                  value ?? '', passwordController.text),
            ),
            MobileTextField(
              controller: phoneController,
            ),
            MobileTextField(
              hintText: strings.parent_mobile_number,
              controller: parentPhoneController,
            ),
            CheckBoxTermsConditions(
              onChanged: (value) {
                isAgreeStream.setData(value ?? false);
              },
            ),
            StreamBuilder<bool>(
                stream: isAgreeStream.stream,
                initialData: false,
                builder: (context, snapshot) {
                  return PrimaryButton(
                    title: strings.next,
                    margin: 10.paddingTop,
                    onPressed: snapshot.data != true ? null : () => onPressed(),
                    //buttonTextColor: AppColors.appTextColorWhite,
                  );
                }),
            10.ph,
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, Routes.loginPage);
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
      ),
    );
  }

  onPressed() async {
    if (formKey.currentState!.validate()) {
      onRegister!(RegisterParams(
        name: nameController.text,
        phone: phoneController.text,
        password: passwordController.text,
        parentPhone: parentPhoneController.text,
        passwordConfirmation: passwordController.text,
      ));
    }
  }
}
