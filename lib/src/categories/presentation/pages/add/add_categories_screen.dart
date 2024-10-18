import 'dart:io';

import 'package:app/core/utils/helper_methods.dart';

import '../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../main_index.dart';

class AddCategoriesScreen extends BaseStatelessWidget {
  TextEditingController imageController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  File? file;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: 20.paddingAll,
      child: Column(children: [
        CustomTextField(
          title: strings.product_name,
          controller: nameController,
        ),
        StatefulBuilder(builder: (context, setState) {
          return CustomTextField(
            title: strings.add_image,
            controller: imageController,
            onTap: () async {
              file = await HelperMethods.getImageFromGallery();
              imageController.text = file?.path ?? "";
              setState(() {});
            },
          );
        }),
        30.ph,
        customButton(
            buttonText: strings.save,
            buttonColor: primaryColor,
            buttonTextColor: whiteTextColor,
            buttonFunc: () {})
      ]),
    );
  }
}
