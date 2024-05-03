
import '../../../../../../core/components/base_widget_bloc.dart';
import '../../course _details/domin/entities/course_details.dart';
import '../../home/presentation/bloc/home_bloc.dart';
import '../../main_index.dart';
import 'lesson_details_screen.dart';

class LessonDetailsPage extends BaseBlocWidget<UnInitState, HomeCubit> {
  LessonDetailsPage({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return LessonDetailsScreen(
      subject: getArguments(context)['subject'], department: getArguments(context)['department'],
    );
  }
  @override
  String? title(BuildContext context) {
    final Subjects subject=getArguments(context)['subject'];
    return subject.name;
  }
}
