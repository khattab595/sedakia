
import 'package:app/core/components/base_stateless_widget.dart';

import '../../../../../core/widgets/texts/primary_texts.dart';
import '../../../../../core/widgets/texts/row_icon_text.dart';
import '../../../../main_index.dart';

class RomIconAndText extends BaseStatelessWidget {
   RomIconAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        PrimaryMediumText(
          label: strings.description,
          fontSize: 16,
        ),
        const Spacer(),
        RowIconText(
          containerColor: orangeLight,
          icon: AppIcons.desc,
          value: "إجازة",
          valueStyle: primaryMediumStyle.copyWith(
              fontSize: 14, color: orangeColor),
        ),
      ],
    );
  }
}
