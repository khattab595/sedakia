import 'package:app/src/profile/presentation/widgets/profile_item.dart';

import '../../../main_index.dart';
import '../../data/models/profile_dto.dart';
import '../../domain/entities/profile.dart';

class SalaryWidget extends StatelessWidget {
  final SalaryData salaryData;

  SalaryWidget({super.key, required this.salaryData});

  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    final strings =
        injector<ServicesLocator>().navigatorKey.currentContext!.strings;

    return StatefulBuilder(builder: (context, setState) {
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
                      subtitle: salaryData.baseSalary.toString(),
                    ),
                    ProfileItem(
                      icon: AppIcons.carBus,
                      title: strings.transport_allowance,
                      subtitle: salaryData.transportAllowance?.toString() ?? "",
                    ),
                    ProfileItem(
                      icon: AppIcons.house_building,
                      title: strings.housing_allowance,
                      subtitle: salaryData.housingAllowance?.toString() ?? "",
                    ),
                    ProfileItem(
                      icon: AppIcons.coin,
                      title: strings.total_salary,
                      subtitle: salaryData.grossMonthlySalary?.toString() ?? "",
                    ),
                    ProfileItem(
                      icon: AppIcons.creditCard,
                      title: strings.bank_account_number,
                      subtitle: salaryData.bankNumber ?? "",
                    ),
                    ProfileItem(
                      icon: AppIcons.hastag,
                      title: strings.iban_number,
                      subtitle: salaryData.bankIban ?? "",
                    ),
                    ProfileItem(
                      icon: AppIcons.bank3,
                      title: strings.bank_name,
                      subtitle: salaryData.bankName ?? "",
                    ),
                    ProfileItem(
                      icon: AppIcons.creditCardBuyer,
                      title: strings.exchange_method,
                      subtitle: salaryData.paymentMethod ?? "",
                    ),
                  ],
                )
        ],
      );
    });
  }
}
