
import '../../../../../../core/components/base_widget_bloc.dart';
import '../../home/presentation/bloc/home_bloc.dart';
import '../../main_index.dart';
import 'lesson_details_screen.dart';

class LessonDetailsPage extends BaseBlocWidget<DataSuccess, HomeCubit> {
  LessonDetailsPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchInitialData();
  }
  @override
  Widget buildWidget(BuildContext context, DataSuccess state) {
    return LessonDetailsScreen(
      home: state.data!,
    );
  }
  @override
  String? title(BuildContext context) {
    return 'الدرس الاول';
  }
}
