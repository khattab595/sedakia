import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../bloc/home_bloc.dart';
import 'home_screen.dart';

class HomePage extends BaseBlocWidget<UnInitState, HomeCubit> {
  HomePage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchInitialData();
  // }

  @override
  Widget buildWidget(
      BuildContext context, UnInitState state) {
    return HomeScreen(
      // currentProjectStream: bloc.currentProjectStream,
      // projectsStream: bloc.projectsStream,
    );
  }
}
