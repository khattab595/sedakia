import 'package:app/src/main_index.dart';

import '../../../../core/utils/navigator.dart';
import '../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../data/models/home_dto.dart';

class HomeButtons extends BaseStatelessWidget {
  final List<Statistic> statistics;

  HomeButtons({super.key, required this.statistics});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _Item(
            icon: AppIcons.qayd_payment,
            title: strings.qayd_pay,
            onTap: () {
              Navigators.pushNamed(Routes.qaydPaymentPage);
            },
          ),
          _Item(
            icon: AppIcons.reports,
            title: strings.reports,
            onTap: () {
              Navigators.pushNamed(Routes.reportsPage);
            },
          ),
        ]),
        10.ph,
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _Item(
            icon: AppIcons.qayd,
            title: strings.register_qayd,
    sizeIcon: 30,
            onTap: () {
              Navigators.pushNamed(Routes.regiserQaydPage);
            },
          ),
          _Item(
            icon: AppIcons.invoices,
            title: strings.invoices,
            onTap: () {
              Navigators.pushNamed(Routes.invoicesPage);
            },
          ),
        ]),
      ],
    );
  }
}

class _Item extends BaseStatelessWidget {
  final String icon;
  final String title;
  final Function()? onTap;
  final double? sizeIcon;

  _Item({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.sizeIcon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ContainerShapeShadow(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppIcon(
              icon: icon,
              size: sizeIcon ?? 40,
              color: primaryColor,
            ),
            BoldText(
              label: title,
            ),
          ],
        ),
      ),
    );
  }
}
