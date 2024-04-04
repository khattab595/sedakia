import 'package:app/core/components/base_widget_bloc.dart';

import '../../../main_index.dart';
import '../../domain/entities/splash.dart';
import '../bloc/splash_bloc.dart';
import 'introduction_screen.dart';


class IntroductionPage extends BaseBlocWidget<DataSuccess<List<Splash>>, SplashCubit> {
  IntroductionPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchSplashData();
  }


  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<Splash>> state) {

    return IntroductionScreen(
      splashData: state.data ?? [],
    );
  }


}
