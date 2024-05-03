import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../../data/models/department_dto.dart';
import '../../bloc/home_bloc.dart';
import 'home_screen.dart';

class HomePage extends BaseBlocWidget<UnInitState, HomeCubit> {
  HomePage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchInitialData();
  }

  @override
  Widget buildWidget(
      BuildContext context, UnInitState state) {
    return HomeScreen(
      departmentsStream: bloc.departmentsStream,
      recentlyCoursesStream: bloc.recentlyCoursesStream,
      recentlyStream: bloc.recentlyStream,
      slidesStream: bloc.slidesStream,
      teachersStream: bloc.teachersStream,
    );
  }
}
