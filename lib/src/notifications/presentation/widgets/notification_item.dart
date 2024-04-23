import 'package:app/core/decorations/decorations.dart';
import 'package:app/core/exceptions/extensions.dart';
import 'package:app/core/widgets/buttons/app_icon.dart';
import 'package:app/core/widgets/texts/row_texts.dart';
import 'package:flutter/material.dart';

import '../../../../core/assets/app_icons.dart';
import '../../../../core/components/base_stateless_widget.dart';
import '../../../../core/widgets/texts/texts.dart';
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
    return Column(
      children: [
        Container(
          padding: 5.paddingAll,
          decoration:Decorations.kDecorationTopRadius(radius: 6),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppIcon(
                icon: AppIcons.notification,
                size: 16,
              ),
              10.pw,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          child: PrimaryBoldText(
                            label: "الحاج",
                          ),
                        ),
                      ],
                    ),
                    4.ph,
                    const MediumText(
                      label:
                          'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل ',
                      fontSize: 12,
                    ),
                    5.ph,
                    RowTexts(
                      title: "2023-05-28",
                      value: "02:00am",
                      titleStyle: bodyMedium.copyWith(fontSize: 12),
                      valueStyle: bodyMedium.copyWith(fontSize: 12),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
