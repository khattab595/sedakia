import '../../../../../../core/components/base_widget_bloc.dart';
import '../../../core/resources/data_state.dart';
import '../../home/presentation/bloc/home_bloc.dart';
import '../../main_index.dart';
import 'latest_courses_screen.dart';

class LatestCoursesPage extends BaseBlocWidget<DataSuccess, HomeCubit> {
  LatestCoursesPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchHomeData();
  }
  @override
  Widget buildWidget(BuildContext context, DataSuccess state) {
    return LatestCoursesScreen(
      home: state.data!,
    );
  }
  @override
  String? title(BuildContext context) {
    return strings.latest_courses;
  }
}
