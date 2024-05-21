import 'dart:io';

import 'package:app/core/utils/navigator.dart';
import 'package:app/src/profile/presentation/widgets/person_widget.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../main_index.dart';
import '../../../settings/domain/entities/about.dart';
import '../../domain/entities/profile.dart';
import '../widgets/profile_header_widget.dart';
import '../widgets/profile_item.dart';
import '../widgets/salary_widget.dart';

class ProfileScreen extends BaseStatelessWidget {
  final Profile profile;
  final VoidCallback onLogout;
  final VoidCallback onDeleteAccount;
  final VoidCallback onRefresh;
  final VoidCallback onSupport;
  final Function(File) onSelectImage;

  ProfileScreen({
    Key? key,
    required this.profile,
    required this.onLogout,
    required this.onDeleteAccount,
    required this.onRefresh,
    required this.onSupport,
    required this.onSelectImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: 15.paddingHoriz,
      child: Column(
        children: [
          ProfileHeaderWidget(
            profile: profile,
            onSelectImage: onSelectImage,
          ),
         30.ph,
          PersonWidget(),
          SalaryWidget(),
          ProfileItemV2(
              icon: AppIcons.lock,
              onTap: () {
                pushNamed(Routes.changePasswordPage);
              },
              title: strings.change_password),
          10.ph,
          ProfileItemV2(
              icon: AppIcons.language,
              onTap: () {
            pushNamed(Routes.changLanguagePage);
              },
              title: strings.language),
          20.ph,
        ],
      ),
    );
  }
}
