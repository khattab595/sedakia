import 'package:app/src/main_index.dart';

class TabItemModel{
  final String label ;
  final String? image ;
  final Widget page ;
  TabItemModel({required this.label ,required this.page, this.image});
  Tab builder(){
    return TabWidgetItemBuilder(this);
  }
}

class TabWidgetItemBuilder extends Tab{
  TabWidgetItemBuilder(TabItemModel model, {Key? key}):super(key: key, text: model.label);
}

class TabBarWidget  extends BaseStatelessWidget{
  final Function(int)? onTap;
  final List<TabItemModel> tabs ;
  TabBarWidget({Key? key ,required this.tabs, this.onTap});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        backgroundColor: scaffoldBackgroundColor,
        body: Column(
          children: [
            TabBar(
              // isScrollable: true,
               indicatorColor:  context.primaryColor,
              dividerColor: dividerColor,
              unselectedLabelStyle: hintBoldStyle.copyWith(fontSize: 20),
              labelStyle: primaryBoldStyle,
              padding: 5.paddingAll,
              indicatorPadding: 0.paddingAll,
              labelPadding:  0.paddingHoriz ,
              // indicator:  BoxDecoration(
              //   color: context.primaryColor,
              //   // borderRadius: const BorderRadius.all(Radius.circular(8)),
              //   // boxShadow: [
              //   //   BoxShadow(
              //   //     color: Colors.black.withOpacity(0.2),
              //   //     spreadRadius: 1,
              //   //     blurRadius: 1,
              //   //     offset: const Offset(0, 1), // changes position of shadow
              //   //   ),
              //   // ],
              //
              // ),
              indicatorSize: TabBarIndicatorSize.tab,
              onTap: onTap,
              tabs: tabs.map((e) => e.builder()
              ).toList(),
            ),
            Expanded(
              child: TabBarView(
                // physics: const NeverScrollableScrollPhysics(),
                children: tabs.map((e) => e.page).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
