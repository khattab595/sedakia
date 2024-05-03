import 'package:app/core/assets/app_icons.dart';
import 'package:app/core/decorations/decorations.dart';
import 'package:app/core/exceptions/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/base_stateless_widget.dart';
import '../../../../core/widgets/buttons/app_icon.dart';
import '../../../../core/widgets/texts/texts.dart';

///  Created by harbey on 9/15/2023.
class ContactUs extends BaseStatelessWidget {
  final List statistics;
  ContactUs({super.key, required this.statistics});
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: 10.paddingStart,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BoldText(
            label: strings.to_contact_us,
          ),
          10.ph,
          _Item(
            icon: AppIcons.phone,
            title: '90011111',
          ),
          _Item(
            icon: AppIcons.whats_app,
            title: '0538562269',
          ),
          _Item(
            icon: AppIcons.email,
            title: 'hello@realygreatesite.com',
            iconSize: 18,
          ),
        ]
      ),
    );
  }
}

class _Item extends BaseStatelessWidget {
  final String icon;
  final String title;
  final double? iconSize;

   _Item({
    super.key,
    required this.icon,
    required this.title,
     this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 10.paddingBottom,
      child: ListTile(
        leading: AppIcon(
          icon: icon,
          size: iconSize ?? 25,
        ),
        tileColor: hintColor,
        title: SemiBoldText(
          label: title,
        )
      ),
    );
  }
}
