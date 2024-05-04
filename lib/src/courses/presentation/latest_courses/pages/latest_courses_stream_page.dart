import 'package:app/core/widgets/buttons/selection_button_chip.dart';

import '../../../../../../../../core/components/base_widget_bloc.dart';
import '../../../../home/domain/entities/department.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/course.dart';
import '../../../domain/entities/latest_courses_args.dart';
import '../bloc/courses_bloc.dart';
import 'latest_courses_screen.dart';

class LatestCoursesStreamPage
    extends BaseBlocWidget<DataSuccess<List<Course>>, CoursesCubit> {
  LatestCoursesStreamPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchCoursesForStream(0);
  }

  @override
  Widget build(BuildContext context) {
    bloc.fetchDepartmentsStream();
    return mainFrame(
      body: StreamBuilder<List<Department>?>(
        stream: bloc.departmentsStream.stream,
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return LoadingView();
          }
          return
            Column(
            children: [
              10.ph,
              SelectionButtonChip(
                items: snapshot.data!
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
          );
        }
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
