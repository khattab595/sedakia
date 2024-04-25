
import 'package:app/src/references/presentation/pages/reference_screen.dart';
import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';


class ReferencePage extends BaseBlocWidget<UnInitState, ProfileBloc>{
  ReferencePage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => strings.important_references_for_hajj;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return ReferenceScreen(

    );
  }

}

