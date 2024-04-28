import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../../core/widgets/texts/custom_rich_text.dart';
import '../../../main_index.dart';

class CustomTitle extends BaseStatelessWidget {
   CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return  ContainerShapeShadow(
        height: 70,
        radius: 18,
        child: CustomRichText(
          label: "اسم الحاج :",
          value: "سامح عبد الجليل احمد حسن",
          valueStyle: blackBoldStyle.copyWith(
            fontSize: 15,
          ),
          labelStyle: primaryBoldStyle.copyWith(fontSize: 15,),
        ));
  }
}
