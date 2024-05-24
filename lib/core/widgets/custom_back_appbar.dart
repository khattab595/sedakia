import 'dart:math';

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
      child: Transform(
          alignment: Alignment.center,
          // if languageCode is RTL flip image
          transform: Matrix4.rotationY(Localizations.localeOf(context).languageCode == (isRtl() ? 'ar' : 'en') ? pi : 0),
          child: AppIcon(icon: AppIcons.back, padding: 12.paddingAll)),
    );
  }
}
