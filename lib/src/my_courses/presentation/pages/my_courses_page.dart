
import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../data/models/my_courses_dto.dart';
import '../bloc/my_courses_bloc.dart';
import 'my_courses_screen.dart';

class MyCoursesPage extends BaseBlocWidget<DataSuccess<List<MyCoursesDto>>, MyCoursesCubit> {
  MyCoursesPage({Key? key}) : super(key: key);


  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchMyCourses();
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<MyCoursesDto>> state) {
    return MyCoursesScreen(
      myCourses: state.data!,
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.my_courses;
  }
}
