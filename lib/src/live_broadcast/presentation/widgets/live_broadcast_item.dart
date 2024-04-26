import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class LiveBraodcastItem extends BaseStatelessWidget {
   LiveBraodcastItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  ContainerShapeShadow(
      radius: 13,
      margin: 5.paddingHoriz + 0.paddingBottom + 10.paddingTop,
      child: Column(
        children: [
          Container(
            height: 129,
            decoration: Decorations.kDecorationRadiusAndImage(
                image: AppImages.photo, radius: 20),
          ),
          10.ph,
          const BoldText(
            label: "بث مباشر للحرم المدني",
            fontSize: 15,
          ),
        ],
      ),
    );
  }
}
