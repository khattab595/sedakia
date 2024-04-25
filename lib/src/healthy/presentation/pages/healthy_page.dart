
import 'package:app/src/program/presentation/pages/programe_screen.dart';

import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import 'healthy_screen.dart';


class HealthyPage extends BaseBlocWidget<UnInitState, ProfileBloc>{
  HealthyPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => strings.your_health_during_hajj;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return HealthyScreen(

    );
  }

}

