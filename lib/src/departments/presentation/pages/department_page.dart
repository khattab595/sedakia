

import '../../../../core/components/base_widget_bloc.dart';
import '../../../courses/domain/entities/course.dart';
import '../../../main_index.dart';
import '../bloc/department_bloc.dart';
import 'department_screen.dart';

class DepartmentPage extends BaseBlocWidget<DataSuccess<List<Course>>, DepartmentCubit> {
  DepartmentPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchDepartmentData(id: getArguments(context));
  }
  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<Course>> state) {
    return DepartmentScreen(
      courses: state.data!,
      onFavorite: (params){},
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.chemistry;
  }
}
