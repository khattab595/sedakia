import '../../../../core/utils/navigator.dart';
import '../../../../core/widgets/texts/primary_texts.dart';
import '../../../main_index.dart';

class MoreItem extends StatelessWidget {
  final String icon;
  final String title;
  final String? route;
  final Widget? trailing;
  final double iconSize;
  final dynamic args;
  final VoidCallback? onRefresh;
  final VoidCallback? onTap;

  const MoreItem({
    Key? key,
    required this.icon,
    required this.title,
    this.trailing,
    this.route,
    this.iconSize = 22,
    this.args,
    this.onRefresh,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
          () async {
            final isRefresh =
                await Navigators.pushNamed(route ?? '', arguments: args);
            if (isRefresh != null && isRefresh && onRefresh != null) {
              onRefresh!();
            }
          },
      child: Column(
        children: [
          ListTile(
            contentPadding: 10.paddingVert + 22.paddingHoriz,
            leading: AppIcon(
              icon: icon,
              size: iconSize,
              color: AppColors.primaryLightText,
            ),
            title: SemiBoldPrimaryText(
              label: title,
              fontSize: 16,
            ),
            trailing: trailing ?? 0.pw,
          ),
        ],
      ),
    );
  }
}
