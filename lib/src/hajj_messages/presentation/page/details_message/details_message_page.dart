

import '../../../../../core/components/base_widget_bloc.dart';
import '../../../../../core/resources/data_state.dart';
import '../../../../main_index.dart';
import '../../../../profile/presentation/bloc/profile_bloc.dart';
import 'details_message_screen.dart';



class DetailsMessagePage extends BaseBlocWidget<UnInitState, ProfileBloc>{
  DetailsMessagePage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => strings.write_a_message;

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return DetailsMessageScreen(

    );
  }

}

