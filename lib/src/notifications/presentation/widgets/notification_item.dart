import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:app/core/widgets/texts/row_texts.dart';

import '../../../../core/widgets/texts/black_texts.dart';
import '../../../main_index.dart';
import '../../data/models/notification_dto.dart';

class NotificationItem extends BaseStatelessWidget {
 final NotificationDto notification;

  NotificationItem({super.key, required this.notification});



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
            title: notification.title??"",
            value:  notification.ago??"",
            titleStyle: primaryMediumStyle.copyWith(fontSize: 16),
            valueStyle: primaryRegularStyle.copyWith(fontSize: 11),
          ),
          2.ph,
          PrimaryRegularText(
            label:  notification.message??"",
            fontSize: 12,
          ),
        ],
      ),
    );

  }
}
