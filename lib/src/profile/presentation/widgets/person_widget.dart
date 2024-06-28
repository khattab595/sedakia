import 'dart:io';

import 'package:app/src/profile/presentation/widgets/profile_item.dart';

import '../../../../core/widgets/texts/black_texts.dart';
import '../../../main_index.dart';
import '../../domain/entities/profile.dart';
import 'edit_profile_image.dart';

class PersonWidget extends StatelessWidget {
  final Profile profile;
  PersonWidget({required this.profile});

  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    final strings =
        injector<ServicesLocator>().navigatorKey.currentContext!.strings;

    return StatefulBuilder(
      builder: (context, setState) {
        return Column(
          children: [
            ProfileItemV2(
                icon: AppIcons.profile,
                trailing: Icon(isShow==false?Icons.arrow_forward_ios_sharp:Icons.keyboard_arrow_down,size: 17,color: AppColors.primaryLight,),

                onTap: () {
                  isShow = !isShow;
                  // setState(() {});
                },
                title: strings.personal_information),
            10.ph,
            isShow == false
                ? 0.pw
                : Column(
                    children: [
                      ProfileItem(
                        icon: AppIcons.smartphone,
                        title: strings.mobile_number,
                        subtitle: profile.phone ?? "",
                      ),
                      ProfileItem(
                        icon: AppIcons.years_date,
                        title: strings.date_birth,
                        subtitle: profile.dateBirth ?? "",
                      ),
                      ProfileItem(
                        icon: AppIcons.years,
                        title: strings.years_experience,
                        subtitle: profile.yearsOfExperience?.toString() ?? "",
                      ),
                      ProfileItem(
                        icon: AppIcons.university,
                        title: strings.qualified,
                        subtitle: profile.educationLevel?.name ?? "",
                      ),
                      ProfileItem(
                        icon: AppIcons.id_number,
                        title: strings.id_number,
                        subtitle: profile.nationalId ?? "",
                      ),
                      ProfileItem(
                        icon: AppIcons.nationality,
                        title: strings.nationality,
                        subtitle: profile.nationality?.name ?? "",
                      ),
                      ProfileItem(
                        icon: AppIcons.location,
                        title: strings.city,
                        subtitle: profile.city?.name ?? "",
                      ), ProfileItem(
                        icon: AppIcons.location,
                        title: strings.religion,
                        subtitle: profile.religion?.name ?? "",
                      ),
                      ProfileItem(
                        icon: AppIcons.gender,
                        title: strings.gender,
                        subtitle: profile.gender ?? "",
                      ), ProfileItem(
                        icon: AppIcons.status,
                        title: strings.marital_status,
                        subtitle: profile.maritalStatus ?? "",
                      ),ProfileItem(
                        icon: AppIcons.calendar,
                        title: strings.starting_date,
                        subtitle: profile.dateOfCommencement ?? "",
                      ),
                    ],
                  )
          ],
        );
      }
    );
  }
}
