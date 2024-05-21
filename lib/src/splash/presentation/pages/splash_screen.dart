import 'package:app/core/utils/navigator.dart';

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
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = CurvedAnimation(
      parent: _controller ?? AnimationController(vsync: this),
      curve: Curves.easeInOut,
    );
    Future.delayed(
      const Duration(seconds: 5),
      () async {
        bool isLogin = await HelperMethods.isLogin();
        if (isLogin) {
          pushNamedAndRemoveUntil(Routes.navigationPages);
        } else {
          pushNamedAndRemoveUntil(Routes.loginPage);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
            builder: (context, child) {
              return Transform.scale(
                scale: _animation?.value,
                child: Transform.rotate(
                  angle: _animation!.value * 2.0 * 3.14,
                  child: child,
                ),
              );
            },
            animation: _animation!,
            child: Image.asset(AppImages.splash)), // Set image
      ),
    );
  }
}
