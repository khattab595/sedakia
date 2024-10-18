import 'dart:io';

import 'package:app/core/widgets/buttons/custom_button.dart';
import 'package:app/core/widgets/drop_down/drop_down.dart';

import '../../../../../core/utils/helper_methods.dart';
import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../main_index.dart';

class AddProductScreen extends BaseStatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  int? category;
  File? file;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: 15.paddingAll,
      child: Form(
        child: Column(
          children: [
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
            CustomTextField(
              title: strings.price,
              controller: priceController,
              keyboardType: TextInputType.number,
            ),
            DropDownField(
                title: strings.category,
                items: const [DropDownItem(title: "بنطلون")],
                onChanged: (item) {}),
            10.ph,
            DropDownField(
                title: strings.available,
                items: const [
                  DropDownItem(title: "نعم"),
                  DropDownItem(title: "لا"),
                ],
                onChanged: (item) {}),
            10.ph,
            CustomTextField(
              title: strings.quantity,
              controller: quantityController,
              keyboardType: TextInputType.number,
            ),
            CustomTextField(
              title: strings.description,
              maxLines: 5,
              minHeight: 120,
              controller: descriptionController,
            ),
            20.ph,
            customButton(
                buttonText: strings.save,
                buttonColor: primaryColor,
                buttonTextColor: whiteTextColor,
                buttonFunc: () {})
          ],
        ),
      ),
    );
  }
}
