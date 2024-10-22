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
  final CategoryModel categoryModel;
 // final ProductDto productDto;
  AddProductScreen(
      {Key? key,
      required this.onCreate,
      required this.categoryModel,
     // required this.productDto
      })
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
    // nameController = TextEditingController(text: productDto.data?.first.name?? "");
    // priceController = TextEditingController(text: productDto.data?.first.price ?? "");
    // imageController = TextEditingController(text: productDto.data?.first.imageUrl ?? "");
    // quantityController =
    //     TextEditingController(text: productDto.data?.first.stockQuantity ?? "");
    // descriptionController =
    //     TextEditingController(text: productDto.data?.first.shortDescription ?? "");
    // descriptionController =
    //     TextEditingController(text: productDto.data?.first.salePrice ?? "");
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
                items: const [
                  DropDownItem(title: "نعم", id: "1"),
                  DropDownItem(title: "لا", id: "0"),
                ],
                value: available,
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
                  onCreate(ProductParams(
                      name: nameController.text,
                      regularPrice: priceController.text,
                      salePrice: discountController.text,
                      shortDescription: descriptionController.text,
                      stockQuantity: quantityController.text,
                      stockStatus: available,
                      categories: categories,
                      images: file));
                })
          ],
        ),
      ),
    );
  }
}
