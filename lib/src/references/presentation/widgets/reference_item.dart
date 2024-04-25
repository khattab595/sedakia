import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../../core/widgets/texts/row_texts.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class ReferenceItem extends BaseStatelessWidget {
  ReferenceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerShapeShadow(
          margin: 5.paddingHoriz + 16.paddingTop,
          padding: 10.paddingAll+5.paddingTop,
          radius: 10,
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: 10.paddingVert ,
                height: 117,
                width: 91,
                decoration: Decorations.kDecorationRadiusAndImage(
                    image: AppImages.images, radius: 5),
              ),
              10.pw,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const PrimaryBoldText(
                      fontSize: 15,
                      label: "اسم البرنامج",
                    ),
                    10.ph,
                    const MediumText(
                      label:
                          'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ',
                      fontSize: 12,
                    ),
                   // 4.ph,
                    PrimaryButton(
                      title: "برامج الرحلة",
                      onPressed: () {},
                      height: 35,
                      radius: 6,
                      fontSize: 14,
                    )
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
