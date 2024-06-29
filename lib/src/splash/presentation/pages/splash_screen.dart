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
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 6),
      vsync: this,
    )..repeat(reverse: true);

    _animation = CurvedAnimation(
      parent: _controller ?? AnimationController(vsync: this),
      curve: Curves.easeInOut,
    );
    Future.delayed(
      const Duration(seconds: 6),
      () async {
        bool isLogin = await HelperMethods.isLogin();
        // bool isFirstTime = await HelperMethods.isFirstTime();
        bool isRememberMe = await HelperMethods.getRememberMe();
        if (isRememberMe && isLogin) {
          pushNamedAndRemoveUntil(Routes.navigationPages);
        } else {
          pushNamedAndRemoveUntil(Routes.loginPage);
        }
        // if (isLogin) {
        //   pushNamedAndRemoveUntil(Routes.navigationPages);
        // } else {
        //   pushNamedAndRemoveUntil(Routes.loginPage);
        // }
      },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller?.dispose();
    _animation = null;
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
                  animation: _animation!,
                  child: Image.asset(AppImages.splash, width: 200, height: 200),
                  builder: (context, child) {
                    return Transform.scale(
                      scale: _animation?.value,
                      child: Transform.rotate(
                        angle: _animation!.value * 2.0 * 3.14,
                        child: child,
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: PrimaryBoldText(
                    label: 'شركة الوسيط',
                    fontSize: 20,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            )), // Set image
      ),
    );
  }
}
