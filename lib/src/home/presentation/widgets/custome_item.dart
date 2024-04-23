import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class CustomItem extends BaseStatelessWidget {
   CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Decorations.kDecorationRadius(radius: 16,color: kPrimaryLight),
      margin: 2.paddingEnd + 10.paddingStart,
      width: MediaQuery.of(context).size.width - 30,
      height: 100,
      child: Row(
        children: [
          50.pw,
          AppIcon(
            icon: AppIcons.identify,
            size: 44,
            color: primaryColor,
          ),
          22.pw,
          const BoldText(
            fontSize: 15,
            textAlign: TextAlign.center,
            label: "الهوية الرقمية",
          ),
        ],
      ),
    );
  }
}
