
import 'package:app/src/program/presentation/pages/programe_screen.dart';

import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import 'hajj_transportation_screen.dart';


class HajjTransportationPage extends BaseBlocWidget<UnInitState, ProfileBloc>{
  HajjTransportationPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => strings.hajj_transportation;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return HajjTransportationPageScreen(

    );
  }

}

