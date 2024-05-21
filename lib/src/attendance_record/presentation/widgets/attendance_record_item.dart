import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../core/widgets/texts/row_icon_text.dart';
import '../../../main_index.dart';
import '../../../request_log/domain/entities/course.dart';

class AttendanceRecordItem extends BaseStatelessWidget {
  //final Course item;

  AttendanceRecordItem({
    Key? key,
    //   required this.item
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 15.paddingHoriz + 13.paddingVert,
      margin: 20.paddingHoriz + 10.paddingTop,
      decoration:
          Decorations.kDecorationBorderRadius(borderColor: dividerColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              RowIconText(
                icon: AppIcons.date,
                value: "22 Apr 2024",
                containerColor: cardColor,
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
          ),
          10.ph,
          PrimaryRegularText(
            label: strings.reason,
            fontSize: 14,
          ),
          5.ph,
          PrimaryRegularText(
            label: "كان لدي موعد مع الطبيب",
            labelColor: const Color(0xffB1B1B1),
          ),
        ],
      ),
    );
  }
}
