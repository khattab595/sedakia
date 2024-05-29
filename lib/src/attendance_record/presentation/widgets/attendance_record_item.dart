import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../core/utils/date_formatter.dart';
import '../../../../core/widgets/texts/row_icon_text.dart';
import '../../../main_index.dart';

class AttendanceRecordItem extends BaseStatelessWidget {
  //final Course item;
  final int index;
  final int month;

  AttendanceRecordItem({
    Key? key,
    required this.index,
    required this.month,
    //   required this.item
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("index : $index");
    print("month : $month");

    DateTime date = DateTime(DateTime.now().year, month + 1).subtract(Duration(days: index + 1));
    return Container(
      padding: 15.paddingHoriz + 13.paddingVert,
      margin: 15.paddingHoriz + 10.paddingTop,
      decoration:
          Decorations.kDecorationBorderRadius(borderColor: dividerColor),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // RowIconText(
          //   containerColor: index.isEven
          //       ? primaryColor.withOpacity(0.1)
          //       : index == 3
          //           ? const Color(0xffFFD4D4)
          //           : const Color(0xffFF6B00).withOpacity(0.1),
          //   icon: "",
          //   value: index.isEven ? "حضور" : index == 3 ? "إجازة" : "غياب",
          //   valueStyle: primaryMediumStyle.copyWith(
          //       fontSize: 14, color: index.isEven ? primaryColor : const Color(0xffFF6B00),
          //   ),
          // ),
          5.ph,
          RowIconText(
            icon: AppIcons.date,
            value: DateFormatter.formatTimestampString(
              date.toString(),
              format: DateFormatter.DATE_FORMAT_MOUNTH_DAY,
            ),
            padding: 0.paddingAll,
            containerColor: cardColor,
            valueStyle: primaryMediumStyle.copyWith(fontSize: 18),
          ),
          const Spacer(),
          PrimaryMediumText(
            label: DateTime.now().month < month  ? "غير مدرج" : index.isEven
                ? "حضور"
                : index == 3
                    ? "إجازة"
                    : "غياب",
            labelStyle: primaryMediumStyle.copyWith(
              fontSize: 14,
              color: index.isEven ? primaryColor : const Color(0xffFF6B00),
            ),
          )

          // if(index.isOdd)
          // ...[   10.ph,
          //    PrimaryRegularText(
          //      label: "${strings.reason} :",
          //      fontSize: 14,
          //      labelColor: const Color(0xffFF6B00),
          //    ),
          //    5.ph,
          //    HintRegularText(
          //      label: "كان لدي موعد مع الطبيب",
          //    ),]
        ],
      ),
    );
  }
}
