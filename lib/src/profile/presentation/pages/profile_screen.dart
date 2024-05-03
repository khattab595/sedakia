import '../../../../core/widgets/buttons/primary_icon_button.dart';
import '../../../main_index.dart';
import '../../../settings/domain/entities/about.dart';
import '../../domain/entities/profile.dart';
import '../widgets/profile_header_widget.dart';
import '../widgets/profile_item.dart';

class ProfileScreen extends BaseStatelessWidget {
  final Profile profile;
  final VoidCallback onLogout;
  final VoidCallback onRefresh;

  ProfileScreen(
      {Key? key,
      required this.profile,
      required this.onLogout,
      required this.onRefresh})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          50.ph,
          ProfileHeaderWidget(profile: profile),
          const Divider(height: 20),
          ProfileItem(
            icon: AppIcons.profile,
            title: strings.personal_information,
            route: Routes.editProfilePage,
          ),
          ProfileItem(
            icon: AppIcons.lang,
            title: strings.change_password,
            route: Routes.changePasswordPage,
          ),
          ProfileItem(
            icon: AppIcons.scan,
            title: strings.show_qr,
            route: Routes.changeLanguagePage,
          ),
          ProfileItem(
            icon: AppIcons.grades_history,
            title: strings.grades_history,
            route: 'Routes.gradesHistoryPage',
          ),
          ProfileItem(
            icon: AppIcons.favorite,
            title: strings.favorite,
            route: Routes.favoritePage,
          ),
          ProfileItem(
            icon: AppIcons.warning,
            title: strings.support,
            route: Routes.supportPage,
          ),
          ProfileItem(
            icon: AppIcons.message_question,
            title: strings.about_us,
            route: Routes.aboutPage,
              args: AboutType.aboutUs,
          ),
          ProfileItem(
            icon: AppIcons.terms,
            title: strings.terms_conditions,
            route: Routes.aboutPage,
            args: AboutType.terms,
          ),
          PrimaryButton(
            title: strings.sign_in,
            onPressed: onLogout,
            style: primaryBoldStyle.copyWith(color: errorColor),
            margin: 10.paddingHoriz + 20.paddingTop,
            backgroundColor: primaryColor.withOpacity(0.1),
          ),
          20.ph,
        ],
      ),
    );
  }
}
