import 'package:app/core/decorations/decorations.dart';
import 'package:app/core/exceptions/extensions.dart';
import 'package:app/core/widgets/buttons/app_icon.dart';
import 'package:app/core/widgets/texts/row_texts.dart';
import 'package:flutter/material.dart';

import '../../../../core/assets/app_icons.dart';
import '../../../../core/components/base_stateless_widget.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../data/models/notification_dto.dart';
import '../../domain/entities/notification.dart';

class NotificationItem extends BaseStatelessWidget {
  final NotificationDto notification;
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
        padding: 5.paddingAll,
        decoration:Decorations.kDecorationBorderRadius(radius: 6,
        color: context.cardColor,
          borderColor:  context.cardColor,
        ),
        child: Row(

          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppIcon(
              icon: AppIcons.noti,
              size: 16,
            ),
            10.pw,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Row(
                    children: [
                      Expanded(
                        child: PrimaryBoldText(
                          label: notification.title!,
                        ),
                      ),
                    ],
                  ),
                  4.ph,
                   MediumText(
                    label:notification.description!,
                    fontSize: 12,
                  ),
                  5.ph,
                  RowTexts(
                    title: notification.time!,
                    value: "02:00am",
                    titleStyle: blackMediumStyle.copyWith(fontSize: 12),
                    valueStyle: blackMediumStyle.copyWith(fontSize: 12),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
