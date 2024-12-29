import 'package:app/core/widgets/icons/icon_text.dart';
import 'package:app/src/main_index.dart';

import '../custom_back_appbar.dart';

class AppScaffold extends StatelessWidget {
  final String? title;
  final Widget? titleWidget;
  final TextStyle? titleStyle;
  final Widget body;
  final Widget? floatingActionButton;
  final bool? isDrawer;
  final bool? isNotifications;
  final PreferredSizeWidget? appBar;
  final Color? backgroundAppBar;
  final Widget? bottomSheet;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final List<Widget>? actions;
  final Widget? leading;

  AppScaffold(
      {Key? key,
      this.title,
      this.titleWidget,
      required this.body,
      this.floatingActionButton,
      this.isDrawer = false,
      this.isNotifications = false,
      this.appBar,
      this.backgroundAppBar,
      this.bottomSheet,
      this.bottomNavigationBar,
      this.backgroundColor,
      this.actions,
      this.titleStyle,
      this.foregroundColor,
      this.leading})
      : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      // resizeToAvoidBottomInset: false, // this code remove the keyboard overflow.
      // drawer: isDrawer! ? SideMenuPage(isCaptain: true) : null,
      // primary: true,
      key: _scaffoldKey,
      //SafeArea to save content from the phone top par.
      body: body,
      extendBody: true,
      backgroundColor: backgroundColor ?? theme.scaffoldBackgroundColor,
      floatingActionButton: floatingActionButton,
      bottomSheet: bottomSheet,
      bottomNavigationBar: bottomNavigationBar,
      appBar: ((title == null && titleWidget == null) && appBar == null)
          ? null
          : appBar ??
              AppBar(
                title: Text(
                  title ?? '',
                  style: titleStyle ??
                      theme.appBarTheme.titleTextStyle?.copyWith(
                          color: AppColors.primaryLight,
                          fontWeight: FontWeight.w600),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
                actions: actions,
                backgroundColor:
                    backgroundAppBar ?? theme.appBarTheme.backgroundColor,
                centerTitle: true,
                flexibleSpace: titleWidget,
                foregroundColor:
                    foregroundColor ?? theme.appBarTheme.foregroundColor,

                iconTheme: const IconThemeData(color: AppColors.primaryDark),
              ),
    );
  }
}
