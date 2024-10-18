import '../../../main_index.dart';
import '../widgets/more_item.dart';

class MoreScreen extends BaseStatelessWidget {
  MoreScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MoreItem(
            icon: AppIcons.people,
            title: strings.customers,
            //route: Routes.loginPage,
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: AppColors.primaryLightText,
            ),
          ),
          line(),
          MoreItem(
            icon: AppIcons.messages,
            title: strings.about_us,
            //route: Routes.loginPage,
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: AppColors.primaryLightText,
            ),
          ),
          line(),
          MoreItem(
            icon: AppIcons.privacy,
            title: strings.privacy_policy,
            //route: Routes.loginPage,
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: AppColors.primaryLightText,
            ),
          ),
          line(),
          MoreItem(
            icon: AppIcons.lang,
            title: strings.arabic,
            //route: Routes.loginPage,
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: AppColors.primaryLightText,
            ),
          ),
          line(),
          MoreItem(
            icon: AppIcons.category,
            title: strings.category,
            //route: Routes.loginPage,
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: AppColors.primaryLightText,
            ),
          ),
          line(),
          MoreItem(
            icon: AppIcons.logout,
            title: strings.delete_account,
            //route: Routes.loginPage,

          ),
          line(),
          MoreItem(
            icon: AppIcons.logout,
            title: strings.sign_out,
            //route: Routes.loginPage,
          ),
        ],
      ),
    );
  }
  Widget line(){
    return  Padding(
      padding: 16.paddingHoriz,
      child: const Divider(
        color: Color(0xffF1F1F1),
      ),
    );
  }
}
