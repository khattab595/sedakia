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

  const AppScaffold(
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

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

    ThemeData theme = Theme.of(context);
    return Scaffold(
      // resizeToAvoidBottomInset: false, // this code remove the keyboard overflow.
      // drawer: isDrawer! ? SideMenuPage(isCaptain: true) : null,
      // primary: true,

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
                title:
                Text(title ?? '',
                    style: titleStyle ?? theme.appBarTheme.titleTextStyle,
                maxLines: 2,
                  textAlign: TextAlign.center,
                ),

                backgroundColor:
                    backgroundAppBar ?? theme.appBarTheme.backgroundColor,
                centerTitle: false,
                flexibleSpace: titleWidget,
                foregroundColor:
                    foregroundColor ?? theme.appBarTheme.foregroundColor,
                // leadingWidth: 30,
                // systemOverlayStyle: SystemUiOverlayStyle(
                //   statusBarColor:
                //       backgroundAppBar ?? theme.appBarTheme.backgroundColor,
                //   statusBarBrightness: Brightness.light,
                // ),
                // bottom: PreferredSize(
                //     preferredSize: Size.fromHeight(1),
                //     child: Divider(),
                // ),
                leading: Navigator.canPop(context)
                    ?
                CustomBackAppBar(): leading,
              ),
    );
  }
}
