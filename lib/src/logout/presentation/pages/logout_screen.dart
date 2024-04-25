import 'package:app/core/components/base_stateless_widget.dart';
import 'package:app/core/utils/navigator.dart';

import '../../../../core/widgets/buttons/primary_icon_button.dart';
import '../../../main_index.dart';
import '../../../profile/presentation/widgets/profile_item.dart';

class LogoutScreen extends BaseStatelessWidget {
   LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 12.paddingHoriz,
      child:  Column(
        children: [
          50.ph,
          ProfileItem(
            iconSize: 26,
            icon: AppIcons.send,
            title: strings.send_to_the_campaign,
            route: Routes.changeLanguagePage,
          ),
          10.ph,
          ProfileItem(
            iconSize: 32,
            icon: AppIcons.note,
            title: strings.note,
            route: Routes.notePage,
          ),
          10.ph,
          ProfileItem(
            iconSize: 22,
            icon: AppIcons.message,
            title: strings.hajj_messages,
            route: Routes.hajjMessagesPage,
          ),
          10.ph,
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
          PrimaryIconButton(title:strings.sign_out ,icon: AppIcons.register,onPressed: (){pushNamedAndRemoveUntil(Routes.loginPage);},height: 50,borderRadius: 6,),
          20.ph,
        ],
      ),
    );
  }
}
