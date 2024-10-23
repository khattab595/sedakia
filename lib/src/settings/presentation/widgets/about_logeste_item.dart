import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../core/widgets/texts/primary_texts.dart';
import '../../../main_index.dart';

class AboutLogesteItem extends BaseStatelessWidget {
  AboutLogesteItem({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: Decorations.kDecorationBorderRadius(
          radius: 30, borderColor: AppColors.borderColor.withOpacity(0.3)),
      padding: 25.paddingAll,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SemiBoldPrimaryText(
            label: title,
            fontSize: 15,
          ),
          15.ph,
          PrimaryRegularText(
            label: subTitle,
            fontSize: 13,
          )
        ],
      ),
    );
  }
}
