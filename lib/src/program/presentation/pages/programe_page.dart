
import 'package:app/src/program/presentation/pages/programe_screen.dart';

import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';


class ProgramePage extends BaseBlocWidget<UnInitState, ProfileBloc>{
  ProgramePage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => strings.campaign_programmes;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return ProgrameScreen(

    );
  }

}

