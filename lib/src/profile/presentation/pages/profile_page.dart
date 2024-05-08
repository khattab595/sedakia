import 'package:app/core/utils/navigator.dart';
import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../domain/entities/profile.dart';
import '../bloc/profile_bloc.dart';
import '../widgets/custom_dialog_body.dart';
import 'profile_screen.dart';

class ProfilePage extends BaseBlocWidget<DataSuccess<Profile>, ProfileBloc> {
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
      onSupport: () => bloc.lunchSupport(),
      onSelectImage: (file) => bloc.editProfileImage(file),
      onLogout: onLogout,
      onDeleteAccount: onDelete,
    );
  }

  @override
  void onSuccessDismissed() {
    Navigators.pushNamedAndRemoveUntil(Routes.loginPage);
  }

  onLogout() {
    DialogsManager.showAlertDialog(context!, CustomDialogBody(
      onLogout: () {
        bloc.logout();
      },
    ));
  }

  onDelete() {
    DialogsManager.showAlertDialog(context!, CustomDialogBody(
      title: strings.delete_account,
      description: strings.delete_account_message,
      onLogout: () {
        bloc.logout();
      },
    ));
  }
}
