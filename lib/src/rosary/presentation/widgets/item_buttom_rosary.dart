import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../core/widgets/buttons/outlined_button.dart';
import '../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../main_index.dart';

class ItemButtonRosary extends BaseStatelessWidget {
   ItemButtonRosary({super.key,required this.onPressed,required this.title});
final String title;
   final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return  ContainerShapeShadow(
        margin: 11.paddingHoriz,
        height: 49,
        radius: 10,
        child: SecondaryButton(title:title,onPressed: onPressed,backgroundColor: whiteTextColor,textColor: blackTextColor,borderColor: whiteTextColor,fontSize: 15,));
  }
}
