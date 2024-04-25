import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../../core/widgets/texts/row_texts.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class HealthyItem extends BaseStatelessWidget {
  HealthyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerShapeShadow(
          margin: 5.paddingHoriz + 16.paddingTop,
          padding: 5.paddingAll,
          radius: 10,
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: 10.paddingVert + 5.paddingStart,
                height: 76,
                width: 91,
                decoration: Decorations.kDecorationRadiusAndImage(
                    image: AppImages.health, radius: 5),
              ),
              10.pw,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          child: PrimaryBoldText(
                            fontSize: 15,
                            label: "للتنقل من المدينة لمكة",
                          ),
                        ),
                      ],
                    ),
                    4.ph,
                    const MediumText(
                      label:
                      'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى)  لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي ',
                      fontSize: 12,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
