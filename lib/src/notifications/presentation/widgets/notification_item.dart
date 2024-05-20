
import '../../../../core/widgets/texts/black_texts.dart';
import '../../../main_index.dart';
import '../../domain/entities/notification.dart';

class NotificationItem extends BaseStatelessWidget {
  final Notifications notification;
  final bool isFirst;
  final bool isLast;

  NotificationItem(
      {Key? key,
      required this.isFirst,
      required this.isLast,
      required this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 10.paddingTop,
      child: Container(
        padding: 10.paddingAll,
        decoration: Decorations.kDecorationOnlyRadius(
          radius: 15,
          color: primaryColor.withOpacity(0.05),
        ),
        child: Row(
          children: [
            Container(
              padding: 10.paddingAll,
              decoration: Decorations.kDecorationOnlyRadius(
                radius: 10,
                color: primaryColor.withOpacity(0.1),
              ),
              child: const AppIcon(
                icon: AppIcons.smartphone,
                size: 20,
              ),
            ),
            10.pw,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: BlackBoldText(
                          label: notification.title ?? '',
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  4.ph,
                  BlackMediumText(
                    label: notification.description ?? '',
                    fontSize: 12,
                  ),
                  // 5.ph,
                  // RowTexts(
                  //   title: notification.date!,
                  //   value: notification.time!,
                  //   titleStyle: blackMediumStyle.copyWith(fontSize: 12),
                  //   valueStyle: blackMediumStyle.copyWith(fontSize: 12),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
