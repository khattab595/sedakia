import 'package:app/core/decorations/decorations.dart';
import 'package:app/core/exceptions/extensions.dart';
import 'package:flutter/material.dart';

import '../../data/models/home_dto.dart';

///  Created by harbey on 9/15/2023.
class HomeHeader extends StatelessWidget {
  final List<Statistic> statistics;
  const HomeHeader({super.key, required this.statistics});
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: 11.paddingHoriz,
      child: Row(
        children: statistics
            .map((e) => Expanded(
                  child: _Item(
                    statistic: e,
                  ),
                ))
            .toList(),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final Statistic statistic;

  const _Item({required this.statistic});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: 5.paddingHoriz,
      decoration: Decorations.kDecorationOnlyRadius(
        color: kColorFromHex(statistic.color ?? '#000000'),
        radius: 14,
      ),
      child: Column(
        children: [
          6.ph,
          Text(
            statistic.title ?? '',
            style: context.labelMedium,
          ),
          2.ph,
          Container(
            padding: 4.paddingAll,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: Decorations.kDecorationOnlyRadius(
              color: kColorFromHex(statistic.color ?? '#000000').withOpacity(0.2),
              radius: 14,
            ),
            child: Text(
              statistic.value?.toString() ?? '0',
              style: context.labelMedium,
            ),
          ),
        ],
      ),
    );
  }


  Color kColorFromHex(String hexColor, {double opacity = 1.0}) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16)).withOpacity(opacity);
  }
}
