import 'package:app/src/teachers/presentation/pages/teachers_screen.dart';

import '../../../../../../../core/components/base_widget_bloc.dart';
import '../../../../core/resources/data_state.dart';
import '../../../home/presentation/bloc/home_bloc.dart';
import '../../../main_index.dart';

class TeachersPage extends BaseBlocWidget<DataSuccess, HomeCubit> {
  TeachersPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchHomeData();
  }
  @override
  Widget buildWidget(BuildContext context, DataSuccess state) {
    return TeachersScreen(
      home: state.data!,
    );
  }
  @override
  String? title(BuildContext context) {
    return strings.teachers;
  }
}
