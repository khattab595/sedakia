import 'dart:io';

import 'package:app/src/profile/presentation/widgets/profile_item.dart';

import '../../../../core/widgets/texts/black_texts.dart';
import '../../../main_index.dart';
import '../../domain/entities/profile.dart';
import 'edit_profile_image.dart';

class PersonWidget extends StatefulWidget {
  @override
  State<PersonWidget> createState() => _PersonWidgetState();
}

class _PersonWidgetState extends State<PersonWidget> {
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    final strings =
        injector<ServicesLocator>().navigatorKey.currentContext!.strings;

    return Column(
      children: [
        ProfileItemV2(
            icon: AppIcons.profile,
            trailing: Icon(isShow==false?Icons.arrow_forward_ios_sharp:Icons.keyboard_arrow_down,size: 17,color: AppColors.primaryLight,),

            onTap: () {
              isShow = !isShow;
              setState(() {});
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
                    subtitle: "+96652678254",
                  ),
                  ProfileItem(
                    icon: AppIcons.years_date,
                    title: strings.date_birth,
                    subtitle: "25/4/2000",
                  ),
                  ProfileItem(
                    icon: AppIcons.years,
                    title: strings.years_experience,
                    subtitle: "10 سنوات",
                  ),
                  ProfileItem(
                    icon: AppIcons.university,
                    title: strings.qualified,
                    subtitle: "مؤهل جامعي",
                  ),
                  ProfileItem(
                    icon: AppIcons.id_number,
                    title: strings.id_number,
                    subtitle: "5435*********2",
                  ),
                  ProfileItem(
                    icon: AppIcons.nationality,
                    title: strings.nationality,
                    subtitle: "مصري",
                  ),
                  ProfileItem(
                    icon: AppIcons.location,
                    title: strings.city,
                    subtitle: "جدة",
                  ), ProfileItem(
                    icon: AppIcons.location,
                    title: strings.religion,
                    subtitle: "مكة المكرمة",
                  ),
                  ProfileItem(
                    icon: AppIcons.gender,
                    title: strings.gender,
                    subtitle: "ذكر",
                  ), ProfileItem(
                    icon: AppIcons.status,
                    title: strings.marital_status,
                    subtitle: "متزوج",
                  ),ProfileItem(
                    icon: AppIcons.calendar,
                    title: strings.starting_date,
                    subtitle: "15/5/2022",
                  ),
                ],
              )
      ],
    );
  }
}
