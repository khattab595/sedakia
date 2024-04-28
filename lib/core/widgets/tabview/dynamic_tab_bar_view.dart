import 'package:app/core/exceptions/extensions.dart';
import 'package:app/src/main_index.dart';
import 'package:app/src/photo_gallery/presentation/pages/photo_gallery_screen.dart';
import 'package:flutter/material.dart';

import '../../../src/photo_gallery/presentation/pages/more_photo_gallery/more_photo_gallery_page.dart';
import '../../../src/photo_gallery/presentation/pages/more_photo_gallery/more_photo_gallery_screen.dart';
import '../../../src/photo_gallery/presentation/pages/photo_gallery_page.dart';
import '../../decorations/decorations.dart';
import '../../di/injector.dart';

class DynamicTabBarView extends StatefulWidget {
  final int? initialIndex;
  final List<DynamicItem> tabs;
  final List<Widget>? children;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? marginTabs;
  final bool? isSeparate;
  final Widget? pageWidget;
  final Function(int)? onTap;

  DynamicTabBarView(
      {Key? key,
      required this.tabs,
      this.children,
      this.margin,
      this.isSeparate = false,
      this.padding,
      this.marginTabs,
      this.pageWidget,
      this.onTap,
      this.initialIndex})
      : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _DynamicTabBarViewState();
  }
}

class _DynamicTabBarViewState extends State<DynamicTabBarView>
    with TickerProviderStateMixin {
  final strings =
      injector<ServicesLocator>().navigatorKey.currentContext!.strings;
  int indexTap = 1;
  @override
  Widget build(BuildContext context) {
    final tabController = TabController(
        length: widget.tabs.length,
        vsync: this,
        initialIndex: widget.initialIndex ?? 0);

    return Padding(
      padding: widget.padding ?? 20.paddingHoriz + 10.paddingVert,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              // clipBehavior: Clip.hardEdge,
              margin: widget.marginTabs,
              // padding: 20.paddingHoriz,
              width: 150,
              decoration: widget.isSeparate!
                  ? Decorations.decorationTabs
                  : Decorations.decorationTabsOnlyTop(),
              child: PreferredSize(
                  preferredSize: const Size.fromHeight(150.0),
                  child: TabBar(
                      // labelStyle: blackMediumStyle.copyWith(
                      //   color:Colors.black,
                      //   fontSize: 10,
                      // ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      controller: tabController,
                      //indicator: Decorations.decorationIndicator,
                      indicatorColor: injector<ServicesLocator>()
                          .appContext
                          .scaffoldBackgroundColor,
                      labelColor: injector<ServicesLocator>()
                          .appContext
                          .scaffoldBackgroundColor,
                      padding: EdgeInsets.zero,
                      //isScrollable: true,
                      indicatorPadding: EdgeInsets.zero,
                      unselectedLabelColor: injector<ServicesLocator>()
                          .appContext
                          .scaffoldBackgroundColor,
                      labelPadding: 5.paddingHoriz,
                      //labelPadding: 10.paddingHoriz,
                      onTap: (idTap) {
                        tabController.index == idTap;
                        indexTap = idTap;
                        print(tabController.index);
                        print("jkjkjkjkjk");
                        if (widget.onTap != null) {
                          widget.onTap!(widget.tabs[idTap].id);
                        }
                      },
                      tabs: const [
                        Tab(
                          child: AppIcon(
                            icon: AppIcons.iconOne,
                            size: 15,
                          ),
                        ),
                        Tab(
                          child: AppIcon(
                            icon: AppIcons.iconTwo,
                            size: 15,
                          ),
                        ),
                      ])),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: widget.pageWidget ??
                  TabBarView(controller: tabController, children: [
                    PhotoGalleryScreen(),
                    MorePhotoGalleryScreen()
                  ]),
            )
          ]),
    );
  }
}

class DynamicItem {
  DynamicItem({
    required this.id,
    required this.icon,
  });

  int id;
  String icon;
}
