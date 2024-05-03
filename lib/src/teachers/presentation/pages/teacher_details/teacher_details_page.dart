import 'package:app/src/teachers/presentation/pages/teacher_details/teacher_details_screen.dart';
import '../../../../../../core/components/base_widget_bloc.dart';
import '../../../../main_index.dart';
import '../../../domin/entities/teacher_details.dart';
import '../../bloc/teacher_bloc.dart';

class TeacherDetailsPage extends BaseBlocWidget<DataSuccess<TeacherDetails>, TeacherCubit> {
  TeacherDetailsPage( {Key? key,}) : super(key: key);
  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchTeacherDetailsData(id: getArguments(context));
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<TeacherDetails> state) {
    return TeacherDetailsScreen(
       teacherDetails: state.data!,
    );
  }

}
