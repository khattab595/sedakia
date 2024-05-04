import 'dart:io';

import 'package:app/core/widgets/texts/hint_texts.dart';
import 'package:image_cropper/image_cropper.dart';

import '../../../src/main_index.dart';
import '../../utils/helper_methods.dart';
import 'custom_text_field.dart';

class MobileTextField extends BaseStatelessWidget {
  final String? title;
  final String? hintText;
  final TextEditingController? controller;
  MobileTextField({Key? key, this.title, this.hintText, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: controller,
      title: title,
      hintText: hintText ?? strings.mobile_number,
      keyboardType: TextInputType.number,
      suffixIcon: Container(
        alignment: AlignmentDirectional.centerEnd,
        width: 50,
        padding: 10.paddingEnd,
        child: HintMediumText(
         label: '964+',
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return strings.this_field_is_required;
        } else if (value.length < 6) {
          return strings.must_be_more_than_6_digits;
        }
        return null;
      },
    );
  }
}