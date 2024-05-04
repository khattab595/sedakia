
import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../../data/models/attending_lesson_params.dart';
import '../../../domain/entities/course_details.dart';
import '../bloc/course_details_bloc.dart';
import '../bloc/lesson_details_bloc.dart';
import 'lesson_details_screen.dart';

class LessonDetailsPage extends BaseBlocWidget<DataSuccess<Lesson>, LessonDetailsCubit> {
  LessonDetailsPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    Lesson subject = getArguments(context);
    bloc.fetchTeacherDetailsData(subject.id ?? 0);
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<Lesson> state) {
    return LessonDetailsScreen(
      subject: state.data ?? getArguments(context),
      attendingMin:(AttendingLessonParams params){
        bloc.attendingMin(params);
      },
    );
  }
  @override
  String? title(BuildContext context) {
    Lesson subject = getArguments(context);
    return subject.name;
  }
}
