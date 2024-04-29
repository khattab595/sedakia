import 'dart:io';

import 'package:app/core/widgets/texts/hint_texts.dart';
import 'package:image_cropper/image_cropper.dart';

import '../../../src/main_index.dart';
import '../../utils/helper_methods.dart';
import 'custom_text_field.dart';

class MobileTextField extends BaseStatelessWidget {
  final TextEditingController? controller;
  MobileTextField({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   CustomTextField(
      controller: controller,
      hintText: strings.mobile_number,
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
        } else if (value.length != 10) {
          return strings.enter_valid_mobile_number;
        }
        return null;
      },
    );
  }
}