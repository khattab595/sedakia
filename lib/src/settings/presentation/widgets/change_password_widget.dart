import 'package:app/core/exceptions/extensions.dart';
import 'package:app/core/widgets/buttons/primary_button.dart';
import 'package:app/core/widgets/buttons/row_buttons.dart';
import 'package:app/src/settings/presentation/widgets/settengs_container.dart';
import 'package:flutter/material.dart';

import '../../../../core/assets/app_icons.dart';
import '../../../../core/components/base_stateless_widget.dart';
import '../../../../core/decorations/decorations.dart';
import '../../../../core/widgets/text-field/custom_text_field.dart';

class ChangePasswordWidget extends BaseStatelessWidget{
  final Function()? onSave;
  ChangePasswordWidget({Key? key, this.onSave}) : super(key: key);
  TextEditingController oldController = TextEditingController();

  TextEditingController newController = TextEditingController();

  TextEditingController confirmController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SettingsContainer(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            CustomTextField(
              title: strings.old_password,
              controller: oldController,
              hintText: strings.old_password,
              keyboardType: TextInputType.visiblePassword,
              margin: 15.paddingBottom,
            ),
            CustomTextField(
              title: strings.new_password,
              controller: newController,
              hintText: strings.new_password,
              isPassword: true,
              keyboardType: TextInputType.visiblePassword,
              margin: 15.paddingBottom,
            ),
            CustomTextField(
              title: strings.confirm_password,
              controller: confirmController,
              hintText: strings.confirm_password,
              keyboardType: TextInputType.visiblePassword,
              isPassword: true,
              margin: 15.paddingBottom,
            ),
            PrimaryButton(
              title: strings.save,
              height: 45,
              radius: 10,
              elevation: 2,
              onPressed: onSave,
            ),
          ],
        ),
      ),
    );
  }
  
}