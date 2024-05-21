import 'package:app/core/components/base_stateless_widget.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../src/main_index.dart';

class RowIconText extends BaseStatelessWidget {
   RowIconText({super.key,required this.icon,this.containerColor,required this.value, this.valueStyle,this.labelColor,this.iconSize});
String icon;
   final String value;
   final TextStyle? valueStyle;
   final Color? labelColor;
   final Color? containerColor;
   final double? iconSize;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         AppIcon(icon: icon,size: iconSize,),
        7.pw,
        Container(
          decoration: Decorations.kDecorationBorderRadius(
              radius: 5,
              color: containerColor,
              borderColor: containerColor),
          height: 23,
         width: 73,
          child: Center(
            child: PrimaryRegularText(
              labelColor: labelColor,
              label: value,
              fontSize: 12,
              labelStyle: valueStyle,
            ),
          ),
        )
      ],
    );
  }
}
