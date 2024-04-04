import '../../../../core/components/base_widget_bloc.dart';
import '../../../main_index.dart';
import '../../../profile/domain/entities/profile.dart';
import '../../../profile/presentation/bloc/profile_bloc.dart';
import 'settings_screen.dart';

class SettingsPage extends BaseBlocWidget<DataSuccess<Profile>, ProfileBloc> {
  SettingsPage({Key? key}) : super(key: key);

  @override
  void loadInitialData(BuildContext context) {
    bloc.fetchProfileData();
  }

  @override
  Widget buildWidget(BuildContext context, DataSuccess<Profile> state) {
    return SettingsScreen(
      profile: state.data!,
      onEditProfile: (params) => bloc.editProfileData(params),
      onDeleteAccount: () => bloc.deleteProfileData(),
      onAddStore: (params) => bloc.addStore(params),
      onEditStore: (store) => bloc.editStore(store),
      onDeleteStore: (id) => bloc.deleteStore(id),
      onChangePassword: (params) => bloc.changePassword(params),
    );
  }

  @override
  String? title(BuildContext context) {
    return strings.my_account;
  }


  @override
  void onSuccessDismissed() {
    bloc.fetchProfileData();
  }
}
