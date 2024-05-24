import 'dart:io';

import 'package:app/src/profile/presentation/widgets/profile_item.dart';

import '../../../../core/widgets/texts/black_texts.dart';
import '../../../main_index.dart';
import '../../domain/entities/profile.dart';
import 'edit_profile_image.dart';

class SalaryWidget extends StatefulWidget {
  @override
  State<SalaryWidget> createState() => _SalaryWidgetState();
}

class _SalaryWidgetState extends State<SalaryWidget> {
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    final strings =
        injector<ServicesLocator>().navigatorKey.currentContext!.strings;

    return Column(
      children: [
        ProfileItemV2(
            icon: AppIcons.coin,
            trailing: Icon(
              isShow == false
                  ? Icons.arrow_forward_ios_sharp
                  : Icons.keyboard_arrow_down,
              size: 17,
              color: AppColors.primaryLight,
            ),
            onTap: () {
              isShow = !isShow;
              setState(() {});
            },
            title: strings.salary_details),
        10.ph,
        isShow == false
            ? 0.pw
            : Column(
                children: [
                  ProfileItem(
                      icon: AppIcons.coin,
                      title: strings.basic_salary,
                      subtitle: "1000"),
                  ProfileItem(
                    icon: AppIcons.carBus,
                    title: strings.transport_allowance,
                    subtitle: "50",
                  ),
                  ProfileItem(
                    icon: AppIcons.house_building,
                    title: strings.housing_allowance,
                    subtitle: "150",
                  ),
                  ProfileItem(
                    icon: AppIcons.coin,
                    title: strings.total_salary,
                    subtitle: "1200",
                  ),
                  ProfileItem(
                    icon: AppIcons.creditCard,
                    title: strings.bank_account_number,
                    subtitle: "115***********",
                  ),
                  ProfileItem(
                    icon: AppIcons.hastag,
                    title: strings.iban_number,
                    subtitle: "123xxxxxxxSA",
                  ),
                  ProfileItem(
                    icon: AppIcons.bank3,
                    title: strings.bank_name,
                    subtitle: "البنك الأهلي السعودي",
                  ),
                  ProfileItem(
                    icon: AppIcons.creditCardBuyer,
                    title: strings.exchange_method,
                    subtitle: "تحويل بنكي",
                  ),
                ],
              )
      ],
    );
  }
}
