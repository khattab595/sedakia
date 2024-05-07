import '../../../../core/utils/navigator.dart';
import '../../../main_index.dart';
import '../widgets/intro_bg.dart';


class IntroductionScreen extends BaseStatelessWidget {
   IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 20.paddingAll,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IntroBg(),
          PrimaryButton(
            title: strings.create_new_account,
            margin: 80.paddingTop,
            onPressed: () {
              pushNamed(Routes.register);
            },
          ),
          PrimaryButton(
            title: strings.sign_in,
            margin: 20.paddingTop,
            backgroundColor: primaryColor.withOpacity(0.2),
            style: primaryBoldStyle.copyWith(fontSize: 16),
            onPressed: () {
              pushNamed(Routes.loginPage);
            },
          ),
        ],
      ),
    );
  }
}
