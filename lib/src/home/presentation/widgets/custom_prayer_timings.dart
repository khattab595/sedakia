import 'package:app/core/components/base_stateless_widget.dart';
import 'package:app/src/main_index.dart';

import '../../../../core/widgets/texts/row_texts.dart';
import '../../../../core/widgets/texts/texts.dart';

class CustomPrayerTimings extends BaseStatelessWidget {
  CustomPrayerTimings({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            margin: 16.paddingHoriz,
            height: 130,
            decoration:
                Decorations.kDecorationRadiusAndImage(image: AppImages.quran)),
         PositionedDirectional(
            top: 15,
            bottom: 0,
            start: 240,
            end: 0,
            child: BoldText(
              label: "24 رمضان 1415",
              labelColor: whiteTextColor,
              fontSize: 14,
            )),
        Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
            child: RowTexts(
              title: "صلاة الظهر     ",
              value: "01:00pm",
              mainAxisAlignment: MainAxisAlignment.center,
              titleStyle:
                  blackSemiBoldStyle.copyWith(fontSize: 18, color: whiteTextColor),
              valueStyle:
                  blackSemiBoldStyle.copyWith(fontSize: 18, color: whiteTextColor),
            ))
      ],
    );
  }
}
