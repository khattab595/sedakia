import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../core/utils/date_formatter.dart';
import '../../../../core/widgets/texts/row_icon_text.dart';
import '../../../main_index.dart';
import '../../data/model/attendance_record_dto.dart';

class AttendanceRecordItem extends BaseStatelessWidget {
  final AttendanceRecordDto data;

  AttendanceRecordItem({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 15.paddingHoriz + 13.paddingVert,
      margin: 15.paddingHoriz + 10.paddingTop,
      decoration:
          Decorations.kDecorationBorderRadius(borderColor: dividerColor),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          5.ph,
          RowIconText(
            icon: AppIcons.date,
            value: data.createdAt ?? "",
            padding: 0.paddingAll,
            containerColor: cardColor,
            valueStyle: primaryMediumStyle.copyWith(fontSize: 18),
          ),
          const Spacer(),
          PrimaryMediumText(
            label: data.movementName ?? "",
            labelStyle: primaryMediumStyle.copyWith(
              fontSize: 14,
              color: data.movementName != "Presence"
                  ? primaryColor
                  : const Color(0xffFF6B00),
            ),
          )
        ],
      ),
    );
  }
}
