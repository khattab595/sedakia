import '../../../../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/course_details.dart';
import '../bloc/course_details_bloc.dart';
import 'course_detials_screen.dart';

class CourseDetailsPage
    extends BaseBlocWidget<DataSuccess<CourseDetails>, CourseDetailsCubit> {
  CourseDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchTeacherDetailsData(id: getArguments(context));
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<CourseDetails> state) {
    return CourseDetailsScreen(
      courseDetails: state.data!,
      subscribeCourse: ({required int courseId, required String courseCode}) {
        bloc.subscribeCourse(courseId: courseId, courseCode: courseCode);
      },
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.course_details;
  }

  @override
  void onSuccessDismissed() {
    pop();
  }
}
