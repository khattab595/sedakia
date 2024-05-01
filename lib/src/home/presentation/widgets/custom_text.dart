import '../../../../core/components/base_stateless_widget.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class CustomText extends BaseStatelessWidget {
   CustomText( {super.key,required this.text,});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 8.paddingHoriz,
      child: Container(
        decoration: Decorations.kDecorationBorderRadius(
          radius: 50,
          color: context.dividerColor.withOpacity(0.5)
        ),
        child: Center(
          child: Padding(
            padding: 8.paddingVert+16.paddingHoriz,
            child: BoldText(
              fontSize: 14,
              textAlign: TextAlign.start,
              label: text,
            ),
          ),
        ),
      ),
    );
  }
}
