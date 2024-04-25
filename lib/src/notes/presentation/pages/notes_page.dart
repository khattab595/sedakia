
import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import 'notes_screen.dart';

class NotePage extends BaseBlocWidget<UnInitState, ProfileBloc>{
  NotePage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) =>strings.the_note;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return NotesScreen(

    );
  }

}

