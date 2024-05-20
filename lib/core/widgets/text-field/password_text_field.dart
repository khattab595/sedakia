
import 'package:app/core/resources/validation.dart';

import '../../../src/main_index.dart';
import 'custom_text_field.dart';

class PasswordTextField extends BaseStatelessWidget {
  final String? title;
  final String? hintText;
  final TextEditingController? controller;
  final EdgeInsetsGeometry? margin;
  PasswordTextField({Key? key, this.title, this.hintText, this.controller, this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: controller,
      title: title ?? strings.password,
      hintText: hintText,
      keyboardType: TextInputType.number,
      prefixIconPath: AppIcons.unlock,
      isPassword: true,
      margin: margin,
      validator: (value)=> Validation.validatePassword(value ?? ''),
    );
  }
}