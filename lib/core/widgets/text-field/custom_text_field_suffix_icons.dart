import 'dart:io';

import 'package:image_cropper/image_cropper.dart';

import '../../../src/main_index.dart';
import '../../utils/helper_methods.dart';
import 'custom_text_field.dart';

class CustomTextFieldSuffixIcons extends BaseStatelessWidget {
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? hintText;
  final TextStyle? hintStyle;
  final Function(List<CroppedFile>)? onPressed;
   CustomTextFieldSuffixIcons({Key? key, this.suffixIcon, this.controller, this.hintText, this.hintStyle, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StreamState<List<CroppedFile>> imagesStream = StreamStateInitial();
    List<CroppedFile> imagesPicker = [];
    ThemeData theme = Theme.of(context);
    return Container(
      decoration: Decorations.kDecorationBorderRadius(
          color: theme.scaffoldBackgroundColor),
      child:  Column(
        children: [
          CustomTextField(
            controller: controller,
            hintText: hintText ?? strings.write_your_comment_here,
            hintStyle: hintStyle ?? theme.textTheme.displaySmall!
                .copyWith(color: theme.hintColor),
            fillColor: theme.scaffoldBackgroundColor,
            colorBorderSide: theme.scaffoldBackgroundColor,

            suffixIcon: suffixIcon ??   AppIconButton(
                icon: AppIcons.image,
                padding: const EdgeInsets.all(12),
                color: theme.colorScheme.secondary,
                onPressed: () async {
                  final image =
                  await HelperMethods.getImagePicker();
                  imagesPicker.add(image ?? CroppedFile(''));
                  imagesStream.setData(imagesPicker);

                }),
          ),
          StreamBuilder(
            stream: imagesStream.stream,
            builder: (context, snapshot) {
              return Wrap(
                children: snapshot.data
                    ?.map((e) => ImageItem(
                  file: e,
                  onPressed: () {
                    imagesPicker.remove(e);
                    imagesStream.setData(imagesPicker);
                    onPressed!(imagesPicker);
                  },
                ))
                    .toList() ??
                    [],
              );
            },
          ),
        ],
      ),
    );
  }
}



class ImageItem extends StatelessWidget {
  final CroppedFile file;
  final VoidCallback onPressed;
  const ImageItem({Key? key, required this.file, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(5),
      height: 120,
      width: 90,
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            color: theme.colorScheme.onSurface),
        image: DecorationImage(
          image: FileImage(File(file.path)),
          fit: BoxFit.cover,
        ),
      ),
      child: AppIconButton(
        icon: AppIcons.remove,
        color: theme.colorScheme.error,
        onPressed: onPressed,
      ),
    );
  }
}