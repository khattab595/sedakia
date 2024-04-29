import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class MorePhotoGalleryItem extends BaseStatelessWidget {
  MorePhotoGalleryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerShapeShadow(
      radius: 14,
      margin: 6.paddingHoriz + 0.paddingBottom + 10.paddingTop,
      child: Column(
        children: [
          Container(
            padding: 10.paddingHoriz,
            height: 114,
            decoration: Decorations.kDecorationRadiusAndImage(
                image: AppImages.spashLogo, radius: 10),
          ),
          10.ph,
          const BoldText(
            label: "صوره وقفة عرفات",
            fontSize: 15,
          )
        ],
      ),
    );
  }
}
