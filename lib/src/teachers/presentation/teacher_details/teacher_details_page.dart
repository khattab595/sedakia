import 'package:app/src/teachers/presentation/teacher_details/teacher_details_screen.dart';
import '../../../../../../core/components/base_widget_bloc.dart';
import '../../../home/presentation/bloc/home_bloc.dart';
import '../../../main_index.dart';

class TeacherDetailsPage extends BaseBlocWidget<DataSuccess, HomeCubit> {
  TeacherDetailsPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchHomeData();
  }
  @override
  Widget buildWidget(BuildContext context, DataSuccess state) {
    return TeacherDetailsScreen(
      home: state.data!,
    );
  }

}
