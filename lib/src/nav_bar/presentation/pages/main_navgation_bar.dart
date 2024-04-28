import 'package:app/src/home/presentation/pages/home/home_page.dart';import 'package:app/src/main_index.dart';import 'package:app/src/qayds/presentation/register_qayd/pages/register_qayd_page.dart';import '../../../profile/presentation/pages/profile_page.dart';import '../bloc/nav_bar_bloc.dart';class NavigationBarPage extends BaseStatelessWidget {  NavigationBarPage({    Key? key,  }) : super(key: key);  @override  Widget build(BuildContext context) {    List<NavigatorModel> items = [      NavigatorModel(        title: strings.home,        screen: HomePage(),        icon: AppIcons.home,      ),      NavigatorModel(        title: strings.invoices,        screen: RegisterQaydPage(),        icon: AppIcons.invoices,      ),      NavigatorModel(        title: strings.qayd,        screen: RegisterQaydPage(),        icon: AppIcons.qayd,      ),      NavigatorModel(        title: strings.account,        screen: ProfilePage(),        icon: AppIcons.account,      ),    ];    return BlocProvider(      create: (context) => NavBarBloc(),      child: BlocBuilder<NavBarBloc, NavBarState>(        builder: (context, state) {          NavBarBloc bloc = NavBarBloc.get(context);          return Scaffold(            bottomNavigationBar: BottomNavigationBar(              onTap: (index) {                bloc.changeIndex(index);              },              currentIndex: bloc.currentIndex,              type: BottomNavigationBarType.fixed,              showSelectedLabels: true,              selectedLabelStyle: primaryMediumStyle.copyWith(fontSize: 14),              unselectedLabelStyle: blackMediumStyle.copyWith(fontSize: 14),              elevation: 10,              selectedIconTheme: IconThemeData(                color: primaryColor,              ),              selectedItemColor: primaryColor,              unselectedItemColor: primaryColorDark,              backgroundColor: scaffoldBackgroundColor,              items: items                  .map((e) => BottomNavigationBarItem(                icon: AppIcon(                  icon: e.icon,                  size: 20,                  padding: 3.paddingBottom,                ),                activeIcon: AppIcon(                  icon: e.icon,                  color: primaryColor,                  padding: 3.paddingBottom,                  size: 22,                ),                label: e.title,              ))                  .toList(),            ),            body: items[bloc.currentIndex].screen,          );        },      ),    );  }}class NavigatorModel {  final String title;  final Widget screen;  final String icon;  NavigatorModel({    required this.title,    required this.screen,    required this.icon,  });}