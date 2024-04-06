import 'package:app/core/widgets/texts/texts.dart';

import '../../../../core/utils/navigator.dart';
import '../../../main_index.dart';

class ProfileItem extends StatelessWidget {
  final String icon;
  final String title;
  final String route;
  final double iconSize;
  final dynamic args;

  const ProfileItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.route,
    this.iconSize = 20,
    this.args,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigators.pushNamed(route, arguments: args);
      },
      child: Column(
        children: [
          ListTile(
              leading: AppIcon(
                icon: icon,
                size: iconSize,
              ),
              title: SemiBoldText(
                label: title,
                fontSize: 14,
              ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
