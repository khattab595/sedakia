import 'package:app/src/teachers/presentation/pages/teacher_details/teacher_details_screen.dart';
import '../../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../../data/models/teacher_details_dto.dart';
import '../../bloc/teacher_bloc.dart';

class TeacherDetailsPage extends BaseBlocWidget<DataSuccess<TeacherDetailsDto>, TeacherCubit> {
  TeacherDetailsPage( {Key? key,required this.id,}) : super(key: key);
  final int id;
  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchTeacherDetailsData(id: id);
  }
  @override
  Widget buildWidget(BuildContext context, DataSuccess<TeacherDetailsDto> state) {
    return TeacherDetailsScreen(
       teacherDetails: state.data!,
    );
  }

}
