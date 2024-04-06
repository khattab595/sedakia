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
        Padding(
          padding: 5.paddingAll,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               AppIcon(
                icon: AppIcons.dot,
                size: 10,
                padding: 8.paddingTop,
              ),
              10.pw,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: RowTexts(
                            title: 'تم تسديد قيد',
                            value: 'منذ ساعتان',
                            titleStyle: bodyLarge.copyWith(fontSize: 16),
                            valueStyle: displayMedium.copyWith(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    10.ph,
                    MediumText(
                      label:
                          'تم تسديد قيد رقم 100323 للمستخدم 15653223 بنقطة البيع',
                      fontSize: 14,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        10.ph,
        Divider(),
      ],
    );
  }
}
