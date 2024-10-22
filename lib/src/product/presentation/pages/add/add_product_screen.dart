import 'dart:ffi';
import 'dart:io';

import 'package:app/core/widgets/buttons/custom_button.dart';
import 'package:app/core/widgets/drop_down/drop_down.dart';

import '../../../../../core/utils/helper_methods.dart';
import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../main_index.dart';
import '../../../data/models/product_params.dart';

class AddProductScreen extends BaseStatelessWidget {
  final Function(ProductParams) onCreate;
  AddProductScreen({Key? key, required this.onCreate
  }) : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  int? category;
  String?  available;
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
            CustomTextField(
              title: strings.discount,
              controller: discountController,
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
                value: available,
                onChanged: (item) {
                  available=item.id;
                }),
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
                buttonFunc: () {
                  onCreate(ProductParams(
                    name: nameController.text,
                    regularPrice: double.parse(priceController.text),
                    salePrice: double.parse(quantityController.text),
                    shortDescription: descriptionController.text,
                    stockStatus:available,
                    categories:["fhj","fs"],

                  ));
                })
          ],
        ),
      ),
    );
  }
}
