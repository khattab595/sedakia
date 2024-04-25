

import 'package:app/src/rosary/presentation/pages/rosary_counter/rosary_counter_screen.dart';
import 'package:app/src/rosary/presentation/pages/rosary_screen.dart';

import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/resources/data_state.dart';
import '../../../../main_index.dart';
import '../../../../profile/presentation/bloc/profile_bloc.dart';




class RosaryCounterPage extends BaseBlocWidget<UnInitState, ProfileBloc>{
  RosaryCounterPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => strings.rosary;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return RosaryCounterScreen(

    );
  }

}

