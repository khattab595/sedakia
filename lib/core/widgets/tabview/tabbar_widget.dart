import 'package:app/src/main_index.dart';

class TabItemModel{
  final String label ;
  final int id ;
  TabItemModel({required this.label,required this.id});
  Tab builder(){
    return TabWidgetItemBuilder(this);
  }
}

class TabWidgetItemBuilder extends Tab{
  TabWidgetItemBuilder(TabItemModel model, {Key? key}):super(key: key, text: model.label);
}

class TabBarWidget  extends StatefulWidget{
  final Function(int)? onTap;
  final List<TabItemModel> tabs ;
  final Widget? page;
  final int? initialIndex;
  const TabBarWidget({Key? key ,required this.tabs, this.initialIndex, this.onTap, this.page}) : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>   with TickerProviderStateMixin {
  final strings =
      injector<ServicesLocator>().navigatorKey.currentContext!.strings;
  int indexTap=1;

  @override
  Widget build(BuildContext context) {
    final tabController = TabController(
        length: widget.tabs.length,
        vsync: this,
        initialIndex: widget.initialIndex ?? 0);
    return DefaultTabController(
      length: widget.tabs.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar:   PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: Container(
            margin: 20.paddingAll,
            decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                border: Border.all(
                    color: const Color(0xff000000).withOpacity(0.2),
                    width: 0.3,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(8)),
            child: TabBar(
              // isScrollable: true,
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              unselectedLabelStyle: context.bodyLarge,
              labelStyle: context.labelLarge,
              labelColor: Colors.white,
              unselectedLabelColor:AppColors.primaryLight,
              padding: 8.paddingAll,
              indicatorPadding: 0.paddingAll,
              labelPadding:  0.paddingHoriz ,
              indicator:  BoxDecoration(
                color: context.primaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],

              ),
              indicatorSize: TabBarIndicatorSize.tab,
              onTap: (idTap) {
                tabController.index == idTap;
                indexTap=idTap;
                print(tabController.index);
                print("jkjkjkjkjk");
                if (widget.onTap != null) {
                  widget.onTap!(widget.tabs[idTap].id);
                }

              },
              tabs: widget.tabs.map((e) => e.builder()
              ).toList(),
            ),
          ),
        ),
        body: widget.page,
      ),
    );
  }
}
