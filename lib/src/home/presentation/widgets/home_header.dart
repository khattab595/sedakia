import 'package:app/core/assets/app_icons.dart';
import 'package:app/core/decorations/decorations.dart';
import 'package:app/core/exceptions/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/base_stateless_widget.dart';
import '../../../../core/widgets/buttons/app_icon.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../data/models/home_dto.dart';

///  Created by harbey on 9/15/2023.
class HomeHeader extends BaseStatelessWidget {
  final List<Statistic> statistics;
   HomeHeader({super.key, required this.statistics});
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _Item(
          icon: AppIcons.qayd_payment,
          title: strings.qayd_pay,
        ),
        _Item(
          icon: AppIcons.reports,
          title: strings.reports,
        ),
      ]
    );
  }
}

class _Item extends BaseStatelessWidget {
  final String icon;
  final String title;

   _Item({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: 5.paddingHoriz,
      padding: 20.paddingVert,
      constraints: const BoxConstraints(
        minWidth: 110,
        maxHeight: 130,
      ),
      decoration: Decorations.baseDecorationRadius(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppIcon(
            icon: icon,
            size: 40,
          ),
          BoldText(
            label: title,
          ),
        ],
      ),
    );
  }
}
