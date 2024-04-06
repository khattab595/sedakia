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

class TabBarWidget  extends StatelessWidget{
  final Function(int)? onTap;
  final List<TabItemModel> tabs ;
  const TabBarWidget({Key? key ,required this.tabs, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar:   PreferredSize(
          preferredSize: const Size.fromHeight(110),
          child: Container(
            margin: 10.paddingAll+10.paddingHoriz,
            decoration: BoxDecoration(
              color: kBackgroundColor,
              border: Border.all(
                  color: kBorderColor,
                  width: 0.3,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(30)),
            child: TabBar(
              isScrollable: true,
              indicatorColor: context.primaryColor,
              unselectedLabelStyle: kTextLabel,
              labelStyle: kTextSemiBold.copyWith(fontSize: 17),
              labelColor: Colors.white,
              unselectedLabelColor:kPrimaryDark,
              padding: 5.paddingAll,
              indicatorPadding: 0.paddingAll,
              labelPadding:  50.paddingHoriz ,
              indicator:  BoxDecoration(
                  color: context.primaryColor,

                  borderRadius: const BorderRadius.all(Radius.circular(21))
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              onTap: onTap,
              tabs: tabs.map((e) => e.builder()
              ).toList(),
            ),
          ),
        ),
        body: TabBarView(

          // physics: const NeverScrollableScrollPhysics(),
          children: tabs.map((e) => e.page).toList(),
        ),
      ),
    );
  }

}
