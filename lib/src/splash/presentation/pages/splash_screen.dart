import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../core/utils/helper_methods.dart';
import '../../../main_index.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;

  late Widget startWidget;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _opacityAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    _animationController.forward();
    Future.delayed(
      const Duration(seconds: 2),
      () async {
        String token = await HelperMethods.getToken();
        // bool isFirstTime = await HelperMethods.isFirstTime();
        bool isRememberMe = await HelperMethods.getRememberMe();
        if (token.isNotEmpty || token != '') {
          pushNamedAndRemoveUntil(Routes.navigationPages);
        } else {
          pushNamedAndRemoveUntil(Routes.loginPage);
        }
      },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
            duration: const Duration(seconds: 6),
            curve: Curves.decelerate,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedBuilder(
                  animation: _opacityAnimation,
                  builder: (context, child) {
                    return Opacity(
                      opacity: _opacityAnimation.value,
                      child: Image.asset(AppImages.splash,
                          width: 200, height: 200),
                    );
                  },
                ),
              ],
            )), // Set image
      ),
    );
  }
}
