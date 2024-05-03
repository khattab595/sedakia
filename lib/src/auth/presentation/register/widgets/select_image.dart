import 'dart:io';

import 'package:app/core/utils/helper_methods.dart';
import 'package:app/core/widgets/texts/hint_texts.dart';
import 'package:dotted_border/dotted_border.dart';

import '../../../../../core/widgets/images/image_network.dart';
import '../../../../main_index.dart';

class SelectImage extends BaseStatelessWidget {
  final String title;
  final Function(File) onSelectImage;

  SelectImage({super.key, required this.title, required this.onSelectImage});

  @override
  Widget build(BuildContext context) {
    File? image;
    return DottedBorder(
      color: dividerColor,
      strokeWidth: 1,
      dashPattern: [8, 8],
      radius: const Radius.circular(12),
      padding: const EdgeInsets.symmetric(vertical: 16),
      borderType: BorderType.RRect,
      child: StatefulBuilder(builder: (context, setState) {
        return InkWell(
          onTap: () async {
            final file = await HelperMethods.getImagePicker();
            image = File(file!.path);
            setState(() {});
            onSelectImage(image!);
          },
          child: Align(
            alignment: Alignment.center,
            child: image != null
                ? Image.file(
                    image!,
                    height: 55,
                    fit: BoxFit.cover,
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add, size: 25, color: hintBoldStyle.color),
                      10.ph,
                      HintMediumText(label: title),
                    ],
                  ),
          ),
        );
      }),
    );
  }
}
