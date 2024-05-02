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
    this.iconSize = 16,
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
      child: ListTile(
        visualDensity: const VisualDensity(horizontal: -4, vertical: -3),
          contentPadding: 0.paddingVert,
          leading: Container(
            padding: 10.paddingAll,
            decoration: Decorations.kDecorationOnlyRadius(
              radius: 10,
              color: context.primaryColor.withOpacity(0.22),
            ),
            child: AppIcon(
              icon: icon,
              size: iconSize,
              color: context.primaryColor,
            ),
          ),
          minLeadingWidth: 40,
          title: BoldText(
            label: title,
          ),
        trailing: const AppIcon(
          icon: AppIcons.arrow_lift,
          size: 16,
        ),
      ),
    );
  }
}
