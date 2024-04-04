import 'package:app/core/exceptions/extensions.dart';
import 'package:app/core/widgets/buttons/primary_button.dart';
import 'package:app/src/settings/presentation/widgets/settengs_container.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/base_stateless_widget.dart';
import '../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../profile/data/models/edit_profile_params.dart';
import '../../../profile/domain/entities/profile.dart';

class GeneralWidget extends BaseStatelessWidget{
  final Profile profile;
  final Function(EditProfileParams)? onEditProfile;
  GeneralWidget({Key? key, required this.profile, this.onEditProfile}) : super(key: key);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController(text: 'Ahmed');
  TextEditingController emailController = TextEditingController(text: 'email@gmail.com');
  TextEditingController phoneController = TextEditingController(text: '01000000000');

  @override
  Widget build(BuildContext context) {
    _initData();
    return SettingsContainer(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            CustomTextField(
              title: strings.name,
              controller: nameController,
              hintText: strings.name,
              margin: 15.paddingBottom,
            ),
            CustomTextField(
              title: strings.email,
              controller: emailController,
              hintText: strings.email,
              keyboardType: TextInputType.emailAddress,
              margin: 15.paddingBottom,
            ),
            CustomTextField(
              title: strings.name,
              controller: phoneController,
              hintText: strings.phone_number,
              keyboardType: TextInputType.number,
              margin: 15.paddingBottom,
            ),
            PrimaryButton(
              title: strings.save,
              height: 45,
              radius: 10,
              elevation: 2,
              onPressed: onEditPressed,
            ),
          ],
        ),
      ),
    );
  }

  onEditPressed() {
    if (formKey.currentState!.validate()) {
      onEditProfile!(EditProfileParams(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
      ));
    }
  }

  _initData() {
    nameController.text = profile.name;
    emailController.text = profile.email;
    phoneController.text = profile.phone;
  }
  
}