

import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../my_courses/domain/entities/course.dart';
import '../bloc/department_bloc.dart';
import 'department_screen.dart';

class DepartmentPage extends BaseBlocWidget<DataSuccess<List<Course>>, DepartmentCubit> {
  DepartmentPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    print('ssstttttttttttttttttttttttttttttt');
    bloc.fetchDepartmentData(id: getArguments(context));
  }
  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<Course>> state) {
    return DepartmentScreen(
      courses: state.data!,
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.chemistry;
  }
}
