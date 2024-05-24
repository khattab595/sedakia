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
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: true);

    _animation = CurvedAnimation(
      parent: _controller ?? AnimationController(vsync: this),
      curve: Curves.easeInOut,
    );
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
        child: AnimatedContainer(
          duration: const Duration(seconds: 5),
          curve: Curves.decelerate,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.splash, width: 200, height: 200),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: PrimaryBoldText(label: 'مؤسسة الوسيط للحراسات الأمنية المدنية', fontSize: 20,
                    textAlign: TextAlign.center,
                    ),)
              ],
            )), // Set image
      ),
    );
  }
}
