
import '../../../../core/utils/navigator.dart';
import '../../../../core/widgets/texts/black_texts.dart';
import '../../../main_index.dart';

class ProfileItem extends StatelessWidget {
  final String icon;
  final String title;
  final String? route;
  final double iconSize;
  final dynamic args;
  final VoidCallback? onRefresh;
  final VoidCallback? onTap;

  const ProfileItem({
    Key? key,
    required this.icon,
    required this.title,
     this.route,
    this.iconSize = 16,
    this.args,
    this.onRefresh,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () async {
        final isRefresh = await Navigators.pushNamed(route ?? '', arguments: args);
        if (isRefresh != null && isRefresh && onRefresh != null) {
          onRefresh!();
        }
      },
      child: ListTile(
        visualDensity: const VisualDensity(horizontal: -2, vertical: -4),
        contentPadding: 6.paddingVert + 10.paddingHoriz,
        leading: Container(
          padding: 10.paddingAll,
          decoration: Decorations.kDecorationOnlyRadius(
            radius: 6,
            color: context.primaryColor.withOpacity(0.15),
          ),
          child: AppIcon(
            icon: icon,
            size: iconSize,
            color: context.primaryColor,
          ),
        ),
        minLeadingWidth: 40,
        title: BlackMediumText(
          label: title,
        ),
        trailing: const AppIcon(
          icon: AppIcons.smartphone,
          size: 16,
        ),
      ),
    );
  }
}
