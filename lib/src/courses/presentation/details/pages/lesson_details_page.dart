
import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../bloc/course_details_bloc.dart';
import 'lesson_details_screen.dart';

class LessonDetailsPage extends BaseBlocWidget<UnInitState, CourseDetailsCubit> {
  LessonDetailsPage({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return LessonDetailsScreen(
      subject: getArguments(context)['subject'], department: getArguments(context)['department'],
      attendingMin:({required int id, required int min}){
        bloc.attendingMin(id: id, min: min);
      },
    );
  }
  // @override
  // String? title(BuildContext context) {
  //   final Subjects subject=getArguments(context)['subject'];
  //   return subject.name;
  // }
}
