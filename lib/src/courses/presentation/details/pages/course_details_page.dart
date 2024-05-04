import '../../../../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../main_index.dart';
import '../../../data/models/course_subscription_params.dart';
import '../../../domain/entities/course.dart';
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
    Course course = getArguments(context);
    bloc.fetchTeacherDetailsData(id: course.id ?? 0);
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<CourseDetails> state) {
    return CourseDetailsScreen(
      courseDetails: state.data!,
      teacher: getArguments(context).teacher ?? '',
      subscribeCourse: (CourseSubscriptionParams params) {
        bloc.subscribeCourse(params);
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
