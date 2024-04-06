import 'package:app/core/utils/helper_methods.dart';
import 'package:app/core/utils/navigator.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../main_index.dart';
import '../../../profile/domain/entities/profile.dart';
import '../widgets/drawer_tiles.dart';
import '../widgets/profile_widget.dart';

class SideMenuScreen extends BaseStatelessWidget {
  double rating = 3;
  final bool isCaptain;

  SideMenuScreen({Key? key, required this.isCaptain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        // Set the transparency here
        canvasColor: Colors.transparent, //or any other color you want. e.g Colors.blue.withOpacity(0.5)
      ),
      child: Drawer(
        width: MediaQuery.of(context).size.width * 0.5,
        backgroundColor: Color(0xff359be0),
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,

        child: ListView(
          padding: const EdgeInsets.only(bottom: 80),
          children: [
            Divider(color: context.cardColor, height: 1),
            DrawerTile(
              tileIconPath: AppIcons.home,
              tileTitle: strings.home,
              tileRoute: Routes.homePage,
            ),
            DrawerTile(
              tileIconPath: AppIcons.order_bold,
              tileTitle: strings.orders,
              tileRoute: Routes.ordersPage,
            ),
            DrawerTile(
              tileIconPath: AppIcons.products_bold,
              tileTitle: strings.products,
              tileRoute: Routes.productsPage,
            ),
            DrawerTile(
              tileIconPath: AppIcons.favorite_bold,
              tileTitle: strings.favorites,
              tileRoute: Routes.favoritesPage,
            ),
            DrawerTile(
              tileIconPath: AppIcons.wallet,
              tileTitle: strings.wallet,
              tileRoute: Routes.walletPage,
            ),
            DrawerTile(
              tileIconPath: AppIcons.store,
              tileTitle: strings.stores,
              tileRoute: Routes.storesPage,
            ),
            DrawerTile(
              tileIconPath: AppIcons.community_bold,
              tileTitle: strings.community,
              tileRoute: Routes.communityPage,
            ),
            DrawerTile(
              tileIconPath: AppIcons.support_bold,
              tileTitle: strings.support,
              tileRoute: Routes.favoritesPage,
            ),
            DrawerTile(
              tileIconPath: AppIcons.suggestions_bold,
              tileTitle: strings.suggestions,
              tileRoute: Routes.favoritesPage,
            ),
            DrawerTile(
              tileIconPath: AppIcons.settings,
              tileTitle: strings.settings,
              tileRoute: Routes.settings,
            ),
          //  const CounterGoodness(),
            DrawerTile(
              tileIconPath: AppIcons.logout_bold,
              tileTitle: strings.logout,
              onTap: () {
                HelperMethods.clearCashData();
                Navigators.goToLoginPage();
              },
            ),
          ],
        ),
      ),
    );
  }
}


class CounterGoodness extends StatelessWidget {
  const CounterGoodness({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(context.strings.counter_goodness, style: context.labelMedium),
        5.ph,
        Container(
           padding: 22.paddingHoriz + 2.paddingVert,
          decoration: Decorations.kDecorationBorderRadius(
            color: context.primaryColor,
            borderColor: Color(0xff0082d9),
          ),
          child:  Text('123,234,56', style: context.labelLarge.copyWith(fontSize: 14)),
        ),
        Divider(color: context.cardColor),
      ],
    );
  }
}
