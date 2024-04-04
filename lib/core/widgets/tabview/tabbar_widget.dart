import 'package:app/core/widgets/images/image_network.dart';
import 'package:app/src/main_index.dart';

import '../../../src/categories/domain/entities/category.dart';
import '../../../src/categories/presentation/widgets/task_item.dart';


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
        backgroundColor: kBackgroundColor,
        appBar:   PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Container(
            margin: 10.paddingAll,
            decoration: BoxDecoration(
              color: kBackgroundColor,
              border: Border.all(
                  color: kBorderColor,
                  width: 0.5,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(30)),
            child: TabBar(
              isScrollable: true,
              indicatorColor: context.primaryColor,
              unselectedLabelStyle: kTextLabel,
              labelStyle: kTextRegular.copyWith(fontSize: 11),
              labelColor: Colors.white,
              unselectedLabelColor:kPrimaryDark,
              padding: 0.paddingAll,
              indicatorPadding: 0.paddingAll,
              labelPadding: 3.paddingAll,
              indicator:  BoxDecoration(
                  color: context.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(21))
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              onTap: onTap,
              tabs: tabs.map((e) => CategoryItem(category: Category(categoryName: e.label, image: e.image))
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
