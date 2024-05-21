
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
          containerColor: const Color(0xffFFE9D4),
          icon: AppIcons.desc,
          value: "أجازة",
          valueStyle: primaryMediumStyle.copyWith(
              fontSize: 14, color: const Color(0xffFF6B00)),
        ),
      ],
    );
  }
}
