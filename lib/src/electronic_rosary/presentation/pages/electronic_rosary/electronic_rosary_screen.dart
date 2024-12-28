import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../main_index.dart';

class ElectronicRosaryScreen extends BaseStatelessWidget {
  ElectronicRosaryScreen({super.key});
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context,setState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            20.ph,
            experiments(),
            15.ph,
            InkWell(
                onTap: (){
                  value = 0;
                  setState(() {});
                },
                child: const Icon(Icons.refresh_outlined)),
          const Spacer(),
            PrimaryBoldText(
              label: "$value",
              fontSize: 30,
              labelColor: AppColors.primaryDark.withOpacity(0.5),
            ),
            const Spacer(),
            InkWell(
              onTap: (){
                value++;
                setState(() {});
              },
              child: CircleAvatar(
                backgroundColor: primaryColor,
                radius: 38,
              ),
            ),
            50.ph,
          ],
        );
      }
    );
  }
  Widget experiments(){
    return   Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: (){
            pushNamed(Routes.experimentsPage);
          },
          child: Container(
            padding: 8.paddingVert + 30.paddingHoriz,
            decoration: Decorations.kDecorationBorderRadius(
                radius: 8, borderColor: primaryColor,color: primaryColor.withOpacity(0.04)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.ac_unit_rounded, color: primaryColor, size: 16),
                5.pw,
                PrimaryMediumText(
                  label: "المجربات",
                  fontSize: 14,
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }
}
