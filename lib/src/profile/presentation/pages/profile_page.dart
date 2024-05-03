
import 'package:app/core/utils/navigator.dart';

import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../domain/entities/profile.dart';
import '../bloc/profile_bloc.dart';
import 'profile_screen.dart';

class ProfilePage extends BaseBlocWidget<DataSuccess<Profile>, ProfileBloc>{
  ProfilePage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchProfileData();
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<Profile> state) {
    return ProfileScreen(
      profile: state.data ?? Profile(),
      onRefresh: () => bloc.fetchProfileData(),
      onLogout: () => bloc.logout(),
    );
  }


  @override
  void onSuccessDismissed() {
    Navigators.pushNamedAndRemoveUntil(Routes.loginPage);
  }

}

