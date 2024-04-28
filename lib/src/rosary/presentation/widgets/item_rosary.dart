import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class ItemRosary extends BaseStatelessWidget {
  ItemRosary({super.key, required this.text, this.fontSize});

  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 24.paddingHoriz + 17.paddingTop,
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Image.asset(
            AppImages.quran,
            fit: BoxFit.scaleDown,
            height: 98,
            width: 98,
          ),
          Container(
            height: 98,
            width: double.infinity,
            padding: 50.paddingHoriz,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: AlignmentDirectional.centerStart,
                end: AlignmentDirectional.centerEnd,
                colors: [
                  Color(0xff307EBC).withOpacity(0.5),
                  Color(0xff5FC1CF),
                ],
              ),
            ),
            child: Image.asset(
              AppImages.basmalla,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),
    );
  }
}
