import '../../../../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../data/models/course_details_dto.dart';
import '../bloc/course_details_bloc.dart';
import 'course_detials_screen.dart';

class CourseDetailsPage extends BaseBlocWidget<DataSuccess<CourseDetailsDto>, CourseDetailsCubit> {
  CourseDetailsPage({Key? key,required this.id, }) : super(key: key);
  final int id;
  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchTeacherDetailsData(id: id);
  }
  @override
  Widget buildWidget(BuildContext context, DataSuccess<CourseDetailsDto> state) {
    return CourseDetailsScreen(
      courseDetailsDto: state.data!,
    );
  }
  @override
  String? title(BuildContext context) {
    return strings.course_details;
  }
}
