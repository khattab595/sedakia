import 'dart:io';

import 'package:app/core/widgets/buttons/custom_button.dart';
import 'package:app/core/widgets/drop_down/drop_down.dart';
import '../../../../../core/utils/helper_methods.dart';
import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../categories/domain/entities/Category.dart';
import '../../../../main_index.dart';
import '../../../data/models/product_dto.dart';
import '../../../data/models/product_params.dart';

class AddProductScreen extends BaseStatelessWidget {
  final Function(ProductParams) onCreate;
  final Function(ProductParams, int id) onUpdate;
  final CategoryModel categoryModel;
  final ProductData? productData;
  AddProductScreen(
      {Key? key,
      required this.onCreate,
      required this.onUpdate,
      required this.categoryModel,
      this.productData})
      : super(key: key);
  TextEditingController nameController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  StreamStateInitial<String> isAvailable = StreamStateInitial();
  int? category;
  String available = "";
  String? categories;
  File? file;
  @override
  Widget build(BuildContext context) {
    if (productData?.parentId == 1) {
      isAvailable.setData("1");
    } else {
      isAvailable.setData("0");
    }
    nameController = TextEditingController(text: productData?.name ?? "");
    priceController = TextEditingController(text: productData?.price ?? "");
    imageController = TextEditingController(text: productData?.imageUrl ?? "");
    quantityController =
        TextEditingController(text: productData?.stockQuantity ?? "");
    descriptionController =
        TextEditingController(text: productData?.shortDescription ?? "");
    descriptionController =
        TextEditingController(text: productData?.salePrice ?? "");
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
                title: strings.available,
                items: [
                  DropDownItem(title: strings.yes, id: "1"),
                  DropDownItem(title: strings.no, id: "0"),
                ],
                value: productData?.parentId.toString(),
                onChanged: (item) {
                  available = item.id!;
                  isAvailable.setData(available);
                }),
            10.ph,
            StreamBuilder(
                stream: isAvailable.stream,
                builder: (context, snapshot) {
                  return (snapshot.data == null || snapshot.data == "0")
                      ? const SizedBox()
                      : DropDownField(
                          title: strings.category,
                          value: categories,
                          items: categoryModel.data!
                              .map((e) => DropDownItem(
                                    id: e.id.toString(),
                                    title: e.name ?? "",
                                  ))
                              .toList(),
                          onChanged: (item) {
                            categories = item.id;
                          });
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
                  productData == null
                      ? onCreate(ProductParams(
                          name: nameController.text,
                          regularPrice: priceController.text,
                          salePrice: discountController.text,
                          shortDescription: descriptionController.text,
                          stockQuantity: quantityController.text,
                          stockStatus: available,
                          categories: categories,
                          images: file))
                      : onUpdate(
                          ProductParams(
                              name: nameController.text,
                              regularPrice: priceController.text,
                              salePrice: discountController.text,
                              shortDescription: descriptionController.text,
                              stockQuantity: quantityController.text,
                              stockStatus: available,
                              categories: categories,
                              images: file),
                          int.parse(productData?.id.toString() ?? ""));
                })
          ],
        ),
      ),
    );
  }
}
