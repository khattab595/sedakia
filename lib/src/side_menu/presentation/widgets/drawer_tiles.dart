import '../../../../core/utils/navigator.dart';
import '../../../main_index.dart';

class DrawerTile extends BaseStatelessWidget {
  final String tileIconPath, tileTitle, tileRoute;
  final bool isDivider;
  final void Function()? onTap;

  DrawerTile(
      {Key? key,
      required this.tileIconPath,
      required this.tileTitle,
      this.isDivider = true,
      this.onTap,
      this.tileRoute = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap ?? () {
            Navigator.popUntil(context, (route) => route.isFirst);
            if(tileRoute == Routes.homePage){
              Navigator.popUntil(context, (route) => route.isFirst);
            } else {
              Navigators.pushNamed(tileRoute);
            }
          },
          leading: AppIcon(icon: tileIconPath, color: context.cardColor),
          horizontalTitleGap: 0,
          visualDensity: const VisualDensity(vertical: -4),
          contentPadding: 20.paddingStart,
          title: Text(
            tileTitle,
            style: theme.textTheme.labelMedium!
          ),
        ),
        if (isDivider) Divider(color: context.cardColor),
      ],
    );
  }
}
