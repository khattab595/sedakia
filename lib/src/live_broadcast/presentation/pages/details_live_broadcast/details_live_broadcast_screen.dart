import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../main_index.dart';

class DetailsLiveBroadcastScreen extends BaseStatelessWidget {
   DetailsLiveBroadcastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerShapeShadow(
      radius: 14,
      margin: 10.paddingHoriz + 0.paddingBottom + 10.paddingTop,
      child: Column(
        children: [
          Container(
            padding: 10.paddingHoriz,
            height: 514,
            decoration: Decorations.kDecorationRadiusAndImage(
                image: AppImages.spashLogo, radius: 20),
          ),
          23.ph,
          const BoldText(
            label:
            'بث مباشر من امام الحرم ',
            fontSize: 18,
          ),
        ],
      ),
    );
  }
}
