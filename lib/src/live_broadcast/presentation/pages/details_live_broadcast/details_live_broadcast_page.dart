import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/resources/data_state.dart';

import '../../../../main_index.dart';
import '../../../../profile/presentation/bloc/profile_bloc.dart';

import 'details_live_broadcast_screen.dart';

class DetailsLiveBroadcastPage
    extends BaseBlocWidget<UnInitState, ProfileBloc> {
  DetailsLiveBroadcastPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => strings.live_broadcast;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return DetailsLiveBroadcastScreen();
  }
}
