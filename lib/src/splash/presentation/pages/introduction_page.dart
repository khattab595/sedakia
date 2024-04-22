import 'package:app/core/components/base_widget_bloc.dart';

import '../../../main_index.dart';
import '../bloc/splash_bloc.dart';
import 'introduction_screen.dart';


class IntroductionPage extends BaseBlocWidget<UnInitState, SplashCubit> {
  IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {

    return IntroductionScreen();
  }


}
