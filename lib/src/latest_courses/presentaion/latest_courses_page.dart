import '../../../../../../core/components/base_widget_bloc.dart';
import '../../home/presentation/bloc/home_bloc.dart';
import '../../main_index.dart';
import 'latest_courses_screen.dart';

class LatestCoursesPage extends BaseBlocWidget<UnInitState, HomeCubit> {
  LatestCoursesPage({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return LatestCoursesScreen(
        courses: getArguments(context)
    );
  }
  @override
  String? title(BuildContext context) {
    return strings.latest_courses;
  }
}
