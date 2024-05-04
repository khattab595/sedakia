import 'package:app/core/widgets/buttons/selection_button_chip.dart';

import '../../../../../../../../core/components/base_widget_bloc.dart';
import '../../../../home/domain/entities/department.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/course.dart';
import '../../../domain/entities/latest_courses_args.dart';
import '../bloc/courses_bloc.dart';
import 'latest_courses_screen.dart';

class LatestCoursesPage
    extends BaseBlocWidget<DataSuccess<List<Course>>, CoursesCubit> {
  LatestCoursesPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    LatestCoursesArgs args = getArguments(context);
    bloc.fetchDepartmentCourses(args.courses);
  }

  @override
  Widget build(BuildContext context) {
    LatestCoursesArgs args = getArguments(context);
    args.departments.insert(0, Department(id: 0, name: strings.all));
    return mainFrame(
      body: Column(
        children: [
          10.ph,
          SelectionButtonChip(
            items: args.departments
                .map((e) =>
                    SelectionItem(id: e.id.toString(), title: e.name ?? ''))
                .toList(),
            onSelected: (item) {
              if (item.id == '0') {
                loadInitialData(context);
              } else {
                bloc.filterCourses(int.parse(item.id));
              }
            },
          ),
          10.ph,
          Expanded(child: buildConsumer(context))
        ],
      ),
    );
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<Course>> state) {
    return LatestCoursesScreen(
      courses: state.data ?? [],
      onFavorite: (params) => bloc.toggleFavorite(params),
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.latest_courses;
  }
}
