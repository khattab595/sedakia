import 'dart:io';

import 'package:app/core/widgets/drop_down/drop_down.dart';

import '../../../../../core/widgets/texts/hint_texts.dart';
import '../../../../../core/widgets/texts/primary_texts.dart';
import '../../../../main_index.dart';
import '../../../data/models/register_params.dart';
import '../../widgets/check_box_terms_conditions.dart';

class CompleteScreen extends BaseStatelessWidget {
  final Function(RegisterParams)? onRegister;

  CompleteScreen({Key? key, this.onRegister}) : super(key: key);

  int academicLevel = 0;
  int stage = 0;
  int gender = 0;
  String birthDate = '';
  File forwardImage = File('');
  File backwardImage = File('');

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print('complete screen build');
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DropDownField(
            hint: strings.academic_level,
            items: [],
            onChanged: (value) {
              academicLevel = int.parse(value.id ?? '0');
            },
          ),
          DropDownField(
            hint: strings.choose_stage,
            items: [],
            onChanged: (value) {
              academicLevel = int.parse(value.id ?? '0');
            },
          ),
          DropDownField(
            hint: strings.general,
            items: [],
            onChanged: (value) {
              academicLevel = int.parse(value.id ?? '0');
            },
          ),
          CheckBoxTermsConditions(
            onChanged: (value) {},
          ),
          // Text(
          //   strings.password_note,
          //   style: context.labelSmall,
          // ),

          PrimaryButton(
            title: strings.next,
            margin: 10.paddingTop,
            onPressed: () => onPressed(),
            //buttonTextColor: AppColors.appTextColorWhite,
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
        // name: nameController.text,
        // email: emailController.text,
        // phone: phoneController.text,
        // password: passwordController.text,
        // country: '1',
        // passwordConfirmation: passwordController.text,
        // platform: await HelperMethods.getPlatform(),
        ));
    //  }
  }
}
