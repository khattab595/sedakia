import 'package:app/core/widgets/texts/texts.dart';

import '../../../../core/utils/navigator.dart';
import '../../../../core/widgets/shapes/rounded_shape.dart';
import '../../../main_index.dart';

class ProfileItem extends StatelessWidget {
  final String icon;
  final String title;
  final String route;
  final double iconSize;
  final dynamic args;
  final VoidCallback? onRefresh;

  const ProfileItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.route,
    this.iconSize = 20,
    this.args,
    this.onRefresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final isRefresh = await Navigators.pushNamed(route, arguments: args);
        if (isRefresh != null && isRefresh && onRefresh != null) {
          onRefresh!();
        }
      },
      child: Column(
        children: [
          ContainerShapeShadow(
            radius: 10,
            height: 52,
            padding: 0.paddingAll,
            child: ListTile(
                leading: AppIcon(
                  icon: icon,
                  size: iconSize,
                ),
                contentPadding: 25.paddingStart,
                minLeadingWidth: 40,
                title: BoldText(
                  label: title,
                  fontSize: 13,
                ),
            ),
          ),
        ],
      ),
    );
  }
}
