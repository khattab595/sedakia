
import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/utils/navigator.dart';
import '../../../../../core/widgets/custom_empty_widget.dart';
import '../../../../main_index.dart';
import '../../../data/models/course_dto.dart';
import '../../../domain/entities/course.dart';
import '../bloc/request_log_bloc.dart';
import 'request_log_screen.dart';

class RequestLogPage extends BaseBlocWidget<DataSuccess<List<Course>>, RequestLogCubit> {
  RequestLogPage({Key? key}) : super(key: key);


  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchRequestLog();
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<List<Course>> state) {
    return RequestLogScreen(
      myCourses: state.data!,
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.my_courses;
  }

}
