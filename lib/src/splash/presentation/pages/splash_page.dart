import 'package:app/core/utils/navigator.dart';

import '../../../../core/utils/helper_methods.dart';
import '../../../main_index.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () async {
        bool isLogin = await HelperMethods.isLogin();
        bool isFirstTime = await HelperMethods.isFirstTime();
        if (isFirstTime) {
          pushNamedAndRemoveUntil(Routes.onboardingPage);
        } else {
          if (isLogin) {
            pushNamedAndRemoveUntil(Routes.navigationPages);
          } else {
            pushNamedAndRemoveUntil(Routes.loginPage);
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(AppImages.splash), // Set image
      ),
    );
  }
}
