import '../../../../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../bloc/courses_bloc.dart';
import 'latest_courses_screen.dart';

class LatestCoursesPage extends BaseBlocWidget<UnInitState, CoursesCubit> {
  LatestCoursesPage({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return LatestCoursesScreen(
      courses: getArguments(context),
      onFavorite: (params) => bloc.toggleFavorite(params),
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.latest_courses;
  }
}
