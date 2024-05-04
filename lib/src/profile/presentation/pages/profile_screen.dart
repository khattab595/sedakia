import 'dart:io';

import 'package:qr_flutter/qr_flutter.dart';

import '../../../main_index.dart';
import '../../../settings/domain/entities/about.dart';
import '../../domain/entities/profile.dart';
import '../widgets/profile_header_widget.dart';
import '../widgets/profile_item.dart';

class ProfileScreen extends BaseStatelessWidget {
  final Profile profile;
  final VoidCallback onLogout;
  final VoidCallback onRefresh;
  final VoidCallback onSupport;
  final Function(File) onSelectImage;

  ProfileScreen(
      {Key? key,
      required this.profile,
      required this.onLogout,
      required this.onRefresh,
      required this.onSupport,
      required this.onSelectImage,
})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          50.ph,
          ProfileHeaderWidget(profile: profile,
            onSelectImage: onSelectImage,
          ),
          const Divider(height: 20),
          ProfileItem(
            icon: AppIcons.profile,
            title: strings.personal_information,
            route: Routes.editProfilePage,
            onRefresh: onRefresh,
          ),
          ProfileItem(
            icon: AppIcons.lang,
            title: strings.change_password,
            route: Routes.changePasswordPage,
          ),
          ProfileItem(
            icon: AppIcons.scan,
            title: strings.show_qr,
            onTap: showQRCodeImage,
          ),
          ProfileItem(
            icon: AppIcons.grades_history,
            title: strings.grades_history,
            route: Routes.scoreCardPage,
          ),
          ProfileItem(
            icon: AppIcons.favorite,
            title: strings.favorite,
            route: Routes.favoritePage,
          ),
          ProfileItem(
            icon: AppIcons.warning,
            title: strings.technical_support,
            onTap: onSupport,
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

  showQRCodeImage() {
    return showDialog(
      context: context!,
      builder: (context) {
        return Dialog(
          alignment: Alignment.center,
          insetPadding: EdgeInsets.symmetric(horizontal: 50),
          child: Container(
            padding: 30.paddingVert + 10 .paddingEnd,
            alignment: AlignmentDirectional.center,
            height: 250,
            child: QrImageView(
              padding: EdgeInsets.zero,
              data: profile.specialCode ?? "",
              version: QrVersions.auto,
              size: 200.0,
            ),
          ),
        );
      },
    );
  }
}
