import 'dart:io';

import 'package:app/core/utils/helper_methods.dart';

import '../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../core/widgets/drop_down/drop_down.dart';
import '../../../../../core/widgets/drop_down/multi_drop_down.dart';
import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../main_index.dart';
import '../../../data/models/category_params.dart';
import '../../../domain/entities/Category.dart';

class AddCategoriesScreen extends BaseStatelessWidget {
  final Function(CategoryParams) addCategory;
  TextEditingController imageController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  File? file;
  String available = "";
  List<String>? category;
  final CategoryModel data;
  StreamStateInitial<String> isAvailable = StreamStateInitial();
  AddCategoriesScreen({
    super.key,
    required this.addCategory,
    required this.data,
  });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: 20.paddingAll,
      child: Column(children: [
        CustomTextField(
          title: strings.name,
          controller: nameController,
        ),
        DropDownField(
          title: strings.available,
          items: const [
            DropDownItem(title: "نعم", id: "1"),
            DropDownItem(title: "لا", id: "0"),
          ],
          value: available,
          onChanged: (value) {
            available = value.id!;
            isAvailable.setData(available);
          },
        ),
        15.ph,
        StreamBuilder(
            stream: isAvailable.stream,
            builder: (context, snapshot) {
              return( snapshot.data == null || snapshot.data=="0")
                  ? const SizedBox()
                  : DropDownFieldMulti(
                      value: category,
                      onChanged: (value) {
                        category = value?.map((e) => e.id ?? "").toList();
                      },
                      title: strings.category,
                      items: data.data
                          !.map((e) => DropDownItem(
                                id: e.id.toString(),
                                title: e.name ?? "",
                              ))
                          .toList(),
                    );
            }),
        10.ph,
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
          title: strings.description,
          maxLines: 5,
          minHeight: 120,
          controller: descriptionController,
        ),
        30.ph,
        customButton(
            buttonText: strings.save,
            buttonColor: primaryColor,
            buttonTextColor: whiteTextColor,
            buttonFunc: () {
              addCategory(CategoryParams(
                name: nameController.text,
                parent: available,
                slug: category,
                image: file,
                description: descriptionController.text,
              ));
            })
      ]),
    );
  }
}
