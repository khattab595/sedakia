import 'package:app/core/decorations/decorations.dart';
import 'package:app/core/exceptions/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/scaffold/custom_divider.dart';
import '../../domain/entities/notification.dart';

class NotificationItem extends StatelessWidget {
  final Notifications notification;
  final bool isFirst;
  final bool isLast;

  const NotificationItem(
      {Key? key, required this.isFirst, required this.isLast, required this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 5.paddingAll,
      decoration: Decorations.kDecorationBorderRadius(
        radius: 0,
        borderColor: context.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            notification.title,
            style: context.headlineSmall,
          ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              //DateFormat('hh:mm a').format(),
              notification.time,
              style: context.displaySmall!.copyWith(
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
