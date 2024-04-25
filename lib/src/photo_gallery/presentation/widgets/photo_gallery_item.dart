import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class PhotoGalleryItem extends BaseStatelessWidget {
   PhotoGalleryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerShapeShadow(
      radius: 14,
      margin: 5.paddingHoriz + 0.paddingBottom + 10.paddingTop,
      child: Column(
        children: [
          Container(
            height: 175,
            decoration: Decorations.kDecorationRadiusAndImage(
                image: AppImages.photo, radius: 10),
          ),
          19.ph,
          const BoldText(
            label: "صوره وقفة عرفات",
            fontSize: 15,
          )
        ],
      ),
    );
  }
}
