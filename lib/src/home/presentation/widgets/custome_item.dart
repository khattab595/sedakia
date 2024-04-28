import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class CustomItem extends BaseStatelessWidget {
   CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Decorations.shapeDecorationShadow(),
      margin: 20.paddingVert + 10.paddingEnd,
      width: MediaQuery.of(context).size.width - 70,
      height: 150,
      child: Row(
        children: [
          50.pw,
          AppIcon(
            icon: AppIcons.identify,
            size: 44,
            color: primaryColor,
          ),
          22.pw,
           BoldText(
            fontSize: 15,
            textAlign: TextAlign.center,
            label: strings.digital_identity,
          ),
        ],
      ),
    );
  }
}
