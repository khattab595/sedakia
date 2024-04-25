
import 'package:app/src/program/presentation/pages/programe_screen.dart';

import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import 'live_broadcast_screen.dart';


class LiveBroadcastPage extends BaseBlocWidget<UnInitState, ProfileBloc>{
  LiveBroadcastPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => strings.live_broadcast;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return LiveBroadcastScreen(

    );
  }

}

