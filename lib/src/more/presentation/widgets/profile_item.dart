import '../../../../core/utils/navigator.dart';
import '../../../../core/widgets/texts/black_texts.dart';
import '../../../main_index.dart';

class ProfileItem extends BaseStatelessWidget {
  final String icon;
  final String title;
  final String subtitle;

  final double iconSize;

  ProfileItem({
    Key? key,
    required this.icon,
    required this.subtitle,
    required this.title,
    this.iconSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: 5.paddingBottom,
        decoration: Decorations.kDecorationBorderRadius(
            borderColor: AppColors.dividerColor.withOpacity(.7)),
        child: ListTile(
          visualDensity: const VisualDensity(horizontal: -2, vertical: -4),
          contentPadding: 0.paddingVert + 10.paddingHoriz,
          leading: AppIcon(
            icon: icon,
            size: iconSize,
            color: context.primaryColor,
          ),
          minLeadingWidth: 20,
          title: Text(
            title,
            style: primaryRegularStyle.copyWith(
                fontSize: 13, color: AppColors.greyColorB1),
          ),
          subtitle: Text(
            subtitle,
            style: primaryRegularStyle.copyWith(
              fontSize: 16,
            ),
          ),
        ));
  }
}

class ProfileItemV2 extends BaseStatelessWidget {
  final String icon;
  final String title;
  Widget? trailing;
  final Function()? onTap;
  final double iconSize;

  ProfileItemV2({
    Key? key,
    required this.icon,
    required this.onTap,
    required this.title,
    this.iconSize = 20,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: Decorations.kDecorationBorderRadius(
            borderColor: AppColors.dividerColor.withOpacity(.7)),
        child: ListTile(
          visualDensity: const VisualDensity(horizontal: -2, vertical: -4),
          contentPadding: 0.paddingVert + 10.paddingHoriz,
          leading: AppIcon(
            icon: icon,
            size: iconSize,
            color: context.primaryColor,
          ),
          minLeadingWidth: 20,
          title: Text(
            title,
            style: primaryRegularStyle.copyWith(
              fontSize: 16,
            ),
          ),
          trailing: trailing ??
              const Icon(
                Icons.arrow_forward_ios_sharp,
                size: 14,
                color: AppColors.primaryLight,
              ),
        ),
      ),
    );
  }
}
