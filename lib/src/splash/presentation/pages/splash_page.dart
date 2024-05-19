import 'package:app/core/utils/navigator.dart';

import '../../../../core/utils/helper_methods.dart';
import '../../../main_index.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
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
        child: Image.asset(AppImages.splash), // Set image
      ),
    );
  }
}
