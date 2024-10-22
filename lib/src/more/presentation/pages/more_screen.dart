import '../../../../core/utils/helper_methods.dart';
import '../../../../core/utils/navigator.dart';
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
             route: Routes.customersPage,
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
             route: Routes.aboutPage,
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
             route: Routes.privacyPolicyPage,
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: AppColors.primaryLightText,
            ),
          ),
          line(),
          MoreItem(
            icon: AppIcons.lang,
            title: strings.language,
             route: Routes.changLanguagePage,
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: AppColors.primaryLightText,
            ),
          ),
          line(),
          MoreItem(
            icon: AppIcons.category,
            title: strings.categories,
            route: Routes.categoriesPage,
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
            onTap: (){
              HelperMethods.clearCashData();
              pushNamedAndRemoveUntil(Routes.loginPage);
            },
          ),
          line(),
          MoreItem(
            icon: AppIcons.logout,
            title: strings.sign_out,
            onTap: (){
              HelperMethods.clearCashData();
              pushNamedAndRemoveUntil(Routes.loginPage);
            },
          ),
        ],
      ),
    );
  }

  Widget line() {
    return Padding(
      padding: 16.paddingHoriz,
      child: const Divider(
        color: Color(0xffF1F1F1),
      ),
    );
  }
}
