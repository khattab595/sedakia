import 'package:app/src/categories/presentation/pages/categories_page.dart';
import 'package:app/src/notifications/presentation/pages/notifications_page.dart';
import 'package:app/src/invoices/presentation/product/pages/products_page.dart';
import 'core/widgets/bottom_navigator_bar_item.dart';
import 'src/home/presentation/pages/home/home_page.dart';
import 'src/main_index.dart';

class NavigationPages extends BaseStatelessWidget {
  bool isCaptain;

  NavigationPages({Key? key, this.isCaptain = false}) : super(key: key);

  List<Widget> pages = [
   // ShipmentsTabsPage(),
    CategoriesPage(),
    HomePage(),
    ProductsPage(),
    NotificationsPage(),
  ];

  // List<PreferredSizeWidget> appbars = [
  //   shipmentsPageAppbar(),
  //   tasksPageAppbar(),
  //   homePageAppbar(),
  //   billsPageAppbar(),
  //   notificationsPageAppbar(),
  // ];


  int pageIndex = 2;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
        return Scaffold(
          //appBar: appbars[pageIndex],
          body: pages[pageIndex],
          floatingActionButton: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 65,
              margin: const EdgeInsets.only(right: 33),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: AppColors.appBackgroundColorBlack,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.appShadowColor,
                    offset: const Offset(0, 5),
                    blurRadius: 5,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomNavigatorBarItem(
                    icon: AppIcons.shipmentOutline,
                    label: strings.shipments,
                    color: getColor(context, 0),
                    onTap: () {
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                  ),
                  BottomNavigatorBarItem(
                    icon: AppIcons.shoppingBagOutline,
                    label: strings.tasks,
                    color: getColor(context, 1),
                    onTap: () {
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                  ),
                  BottomNavigatorBarItem(
                    icon: AppIcons.directArrow,
                    color: getColor(context, 2),
                    onTap: () {
                      setState(() {
                        pageIndex = 2;
                      });
                    },
                  ),
                  BottomNavigatorBarItem(
                    icon: AppIcons.billOutline,
                    label: strings.invoices,
                    color: getColor(context, 3),
                    onTap: () {
                      setState(() {
                        pageIndex = 3;
                      });
                    },
                  ),
                  BottomNavigatorBarItem(
                    icon: AppIcons.notificationOutline,
                    label: strings.notifications,
                    color: getColor(context, 4),
                    onTap: () {
                      setState(() {
                        pageIndex = 4;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
  getColor(BuildContext context,int index) {
    ThemeData theme = Theme.of(context);
    if (index == pageIndex) {
      return theme.cardColor;
    } else {
      return theme.hintColor;
    }
  }
}
