
import 'package:app/src/main_index.dart';

import '../../../../core/utils/navigator.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../data/models/home_dto.dart';


class HomeButtons extends BaseStatelessWidget {
  final List<Statistic> statistics;
   HomeButtons({super.key, required this.statistics});
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _Item(
          icon: AppIcons.qayd_payment,
          title: strings.qayd_pay,
          onTap: (){
            Navigators.pushNamed(Routes.qaydPaymentPage);
          },
        ),
        _Item(
          icon: AppIcons.reports,
          title: strings.reports,
          onTap: (){
            Navigators.pushNamed(Routes.reportsPage);
          },
        ),
      ]
    );
  }
}

class _Item extends BaseStatelessWidget {
  final String icon;
  final String title;
final Function()? onTap;
   _Item({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Container(
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
      ),
    );
  }
}
