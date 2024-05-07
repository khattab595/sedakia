import 'package:app/core/components/base_widget_bloc.dart';

import '../../../main_index.dart';
import '../bloc/splash_bloc.dart';
import 'introduction_screen.dart';


class SplashPage extends BaseBlocWidget<UnInitState, SplashCubit> {
  SplashPage({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {

    return
      Image.asset(AppImages.splash,
        height: 400,fit: BoxFit.cover,);
  }


}
