import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../main_index.dart';

class DetailsPhotoGalleryScreen extends BaseStatelessWidget {
  DetailsPhotoGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerShapeShadow(
      radius: 14,
      margin: 10.paddingHoriz + 0.paddingBottom + 10.paddingTop,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppIcon(icon: AppIcons.close),
          10.ph,
          Container(
            padding: 10.paddingHoriz,
            height: 400,
            decoration: Decorations.kDecorationRadiusAndImage(
                image: AppImages.photo, radius: 10),
          ),
          19.ph,
          const MediumText(
            label:
                'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ',
            fontSize: 12,
          ),
        ],
      ),
    );
  }
}
