import '../../src/main_index.dart';
import 'icons/icon_text.dart';

class CustomBackAppBar extends BaseStatelessWidget {
   CustomBackAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: IconText(
        iconData: Icons.arrow_back_ios_new_rounded,
        isIconData: true,
        iconColor: context.hintColor,
        text: context.strings.back,
        sizedBoxWidth: 0,
        iconSize: 20,
        crossAxisAlignment: CrossAxisAlignment.center,
        textStyle: context.displayLarge.copyWith(
          fontSize: 16,
        ),
      ),
    );
  }
}
