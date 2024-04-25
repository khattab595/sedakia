import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class ItemRosary extends BaseStatelessWidget {
  ItemRosary({super.key, required this.text,this.fontSize});
  final String text;
  final double ?fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: 24.paddingHoriz + 17.paddingTop,
      height: 98,
      decoration:
          Decorations.kDecorationLinearGradient(colors: [kBlueBC, kBlueCF]),
      child:  Center(
          child: BoldText(
        label: text,
        fontSize: fontSize??25,
        labelColor: kPrimaryLight,
      )),
    );
  }
}
