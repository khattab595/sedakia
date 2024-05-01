import 'package:app/core/widgets/texts/texts.dart';

import '../../src/main_index.dart';

class CustomEmptyWidget extends BaseStatelessWidget {
  CustomEmptyWidget( {Key? key,required this.image, this.titleButton,this.onPressed, this.hasButton,required this.text, required this.title,}) : super(key: key);
  final String image;
  final String title;
  final String text;
  final String? titleButton;
  final bool? hasButton;
  dynamic Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 20.paddingHoriz,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppIcon(
            icon: image,
            size: 300,
          ),
          30.ph,
          BoldText(
            fontSize: 25,
            textAlign: TextAlign.center,
            label: title,
          ),
          8.ph,
          MediumText(
            fontSize: 15,
            textAlign: TextAlign.center,
            label: text,
          ),
          hasButton==true?
          PrimaryButton(
            title: titleButton??strings.store,
            margin: 30.paddingVert+10.paddingHoriz,
            onPressed: onPressed,
          ):const SizedBox.shrink()
        ],
      ),
    );
  }
}
