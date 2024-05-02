import '../../../../../../core/components/base_widget_bloc.dart';

import '../../home/presentation/bloc/home_bloc.dart';
import '../../main_index.dart';
import 'department_screen.dart';

class DepartmentPage extends BaseBlocWidget<UnInitState, HomeCubit> {
  DepartmentPage({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return DepartmentScreen(
      departments: getArguments(context),
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.chemistry;
  }
}
