
import '../../../../core/widgets/buttons/primary_icon_button.dart';
import '../../../main_index.dart';
import '../../domain/entities/profile.dart';
import '../widgets/profile_item.dart';

class ProfileScreen extends BaseStatelessWidget {
  final Profile profile;
  final VoidCallback onLogout;
  final VoidCallback onRefresh;

  ProfileScreen({Key? key, required this.profile, required this.onLogout, required this.onRefresh})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 12.paddingHoriz,
      child:  Column(
        children: [
           50.ph,
           ProfileItem(
            iconSize: 28,
            icon: AppIcons.lang,
            title: strings.change_the_language,
            route: Routes.changeLanguagePage,
          ),
          10.ph,
           ProfileItem(
            icon: AppIcons.setting,
            title: strings.program_settings,
            route: Routes.supportPage,
          ),
          10.ph,
           ProfileItem(
            icon: AppIcons.communication,
            title: strings.call_us,
            route: Routes.loginPage,
          ),
          const Spacer(),
          PrimaryIconButton(title:strings.sign_in ,icon: AppIcons.register,onPressed: (){},height: 50,borderRadius: 6,),
           20.ph,
        ],
      ),
    );
  }
}
