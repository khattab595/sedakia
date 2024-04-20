import '../../../main_index.dart';
import '../../domain/entities/profile.dart';
import '../widgets/profile_header_widget.dart';
import '../widgets/profile_item.dart';

class ProfileScreen extends BaseStatelessWidget {
  final Profile profile;
  final VoidCallback onLogout;

  ProfileScreen({Key? key, required this.profile, required this.onLogout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 12.paddingHoriz,
      child: Column(
        children: [
          ProfileHeaderWidget(profile: profile),
          30.ph,
          const Divider(),
          30.ph,
          ProfileItem(
            icon: AppIcons.edit,
            title: strings.edit_account,
            route: Routes.editProfilePage,
            args: profile,
          ),
          ProfileItem(
            icon: AppIcons.notifications,
            title: strings.notifications,
            route: Routes.notifications,
          ),
          ProfileItem(
            icon: AppIcons.request_email,
            title: strings.request_csv_file,
            route: '',
            iconSize: 16,
          ),
          ProfileItem(
            icon: AppIcons.lock,
            title: strings.change_password,
            route: Routes.changePasswordPage,
          ),
          ProfileItem(
            icon: AppIcons.language,
            title: strings.language,
            route: Routes.changeLanguagePage,
          ),
          ProfileItem(
            icon: AppIcons.support,
            title: strings.technical_support,
            route: Routes.supportPage,
          ),
          ProfileItem(
            icon: AppIcons.logout,
            title: strings.logout,
            route: Routes.loginPage,
          ),
        ],
      ),
    );
  }
}
