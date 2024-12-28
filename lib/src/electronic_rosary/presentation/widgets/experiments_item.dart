
import '../../../../core/widgets/texts/row_texts.dart';
import '../../../main_index.dart';

class ExperimentsItem extends BaseStatelessWidget {
   ExperimentsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Decorations.kDecorationBorderRadius(
          radius: 8, borderColor: primaryColor),
      margin: 16.paddingHoriz+10.paddingVert,
      padding: 16.paddingHoriz+15.paddingVert,
      child: RowTexts(
        title: 'سبحان الله',
        value: '/ 8',
        titleStyle: primaryMediumStyle.copyWith(fontSize: 14),
        valueStyle: primaryMediumStyle.copyWith(
            fontSize: 14, color: AppColors.primaryDark.withOpacity(0.4)),
      ),
    );
  }
}
