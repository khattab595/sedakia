

import 'package:app/src/rosary/presentation/pages/rosary_screen.dart';

import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';



class RosaryPage extends BaseBlocWidget<UnInitState, ProfileBloc>{
  RosaryPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => strings.rosary;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return RosaryScreen(

    );
  }

}

