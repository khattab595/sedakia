
import '../../../../../../../core/components/base_widget_bloc.dart';
import '../../../home/presentation/bloc/home_bloc.dart';
import '../../../main_index.dart';
import '../../domain/entities/grade.dart';
import '../bloc/grades_bloc.dart';
import 'grades_screen.dart';

class GradesPage extends BaseBlocWidget<DataState<List<Grade>>, GradesCubit> {
  GradesPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchGradesData();
  }
  @override
  Widget buildWidget(BuildContext context, DataState<List<Grade>> state) {
    return GradesScreen(
      grades: state.data!);
  }
  @override
  String? title(BuildContext context) {
    return strings.show_test;
  }
}
