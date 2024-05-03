import 'package:app/src/teachers/presentation/pages/teachers_screen.dart';

import '../../../../../../../core/components/base_widget_bloc.dart';
import '../../../home/presentation/bloc/home_bloc.dart';
import '../../../main_index.dart';

class TeachersPage extends BaseBlocWidget<UnInitState, HomeCubit> {
  TeachersPage({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return TeachersScreen(
        teachers: getArguments(context));
  }

  @override
  String? title(BuildContext context) {
    return strings.teachers;
  }
}
