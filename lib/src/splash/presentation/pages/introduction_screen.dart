

import '../../../../core/utils/navigator.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';
import '../widgets/intro_bg.dart';


class IntroductionScreen extends BaseStatelessWidget {
   IntroductionScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IntroBg(),
        PrimaryBoldText(
         label: strings.welcome_message,
          fontSize: 24,
        ),
        PrimaryButton(
          title: strings.sign_in,
          margin: 20.paddingAll + 20.paddingTop,
          onPressed: () {
            pushNamed(Routes.loginPage);
          },
        ),
      ],
    );
  }
}
