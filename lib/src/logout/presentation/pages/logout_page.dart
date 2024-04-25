
import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import 'logout_screen.dart';


class LogoutPage extends BaseBlocWidget<UnInitState, ProfileBloc>{
  LogoutPage({Key? key}) : super(key: key);

  // @override
  // void loadInitialData(BuildContext context) {
  //   bloc.fetchProfileData();
  // }

  @override
  String? title(BuildContext context) => 'الحاج : سامح عبد الجليل احمد حسن';

  @override
  Widget buildWidget(BuildContext context, UnInitState state) {
    return LogoutScreen();
  }

}

