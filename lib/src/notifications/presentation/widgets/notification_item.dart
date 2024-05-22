import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:app/core/widgets/texts/row_texts.dart';

import '../../../../core/widgets/texts/black_texts.dart';
import '../../../main_index.dart';
import '../../domain/entities/notification.dart';

class NotificationItem extends BaseStatelessWidget {
  // final Notifications notification;
  // final bool isFirst;
  // final bool isLast;

  NotificationItem({
    Key? key,
    // required this.isFirst,
    // required this.isLast,
    // required this.notification}
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 15.paddingAll,
      margin: 10.paddingHoriz + 10.paddingTop,
      decoration: Decorations.kDecorationBorderRadius(
          borderColor: dividerColor, radius: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RowTexts(
            title: strings.your_salary,
            value: "منذ دقيقة واحدة.",
            titleStyle: primaryMediumStyle.copyWith(fontSize: 16),
            valueStyle: primaryRegularStyle.copyWith(fontSize: 11),
          ),
          2.ph,
          PrimaryRegularText(
            label: "لقد تم تنزيل راتب اليوم إلى حسابك",
            fontSize: 12,
          ),
        ],
      ),
    );
    //   Padding(
    //   padding: 10.paddingTop,
    //   child: Container(
    //     padding: 10.paddingAll,
    //     decoration: Decorations.kDecorationOnlyRadius(
    //       radius: 15,
    //       color: primaryColor.withOpacity(0.05),
    //     ),
    //     child: Row(
    //       children: [
    //         Container(
    //           padding: 10.paddingAll,
    //           decoration: Decorations.kDecorationOnlyRadius(
    //             radius: 10,
    //             color: primaryColor.withOpacity(0.1),
    //           ),
    //           child: const AppIcon(
    //             icon: AppIcons.smartphone,
    //             size: 20,
    //           ),
    //         ),
    //         10.pw,
    //         Expanded(
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Row(
    //                 children: [
    //                   Expanded(
    //                     child: BlackBoldText(
    //                       label: notification.title ?? '',
    //                       fontSize: 14,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               4.ph,
    //               BlackMediumText(
    //                 label: notification.description ?? '',
    //                 fontSize: 12,
    //               ),
    //               // 5.ph,
    //               // RowTexts(
    //               //   title: notification.date!,
    //               //   value: notification.time!,
    //               //   titleStyle: blackMediumStyle.copyWith(fontSize: 12),
    //               //   valueStyle: blackMediumStyle.copyWith(fontSize: 12),
    //               // )
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
