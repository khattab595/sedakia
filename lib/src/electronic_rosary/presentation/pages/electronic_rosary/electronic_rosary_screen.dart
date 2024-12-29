import 'package:app/core/utils/helper_methods.dart';
import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:audioplayers/audioplayers.dart';

import '../../../../../core/widgets/texts/row_texts.dart';
import '../../../../main_index.dart';
import '../../../data/model/experiments_dto.dart';

class ElectronicRosaryScreen extends BaseStatelessWidget {
  ExperimentsDto data;
  ElectronicRosaryScreen({super.key, required this.data});
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: StatefulBuilder(builder: (context, setState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            20.ph,
            RowTexts(
              title: data.experimentName??"",
              value: data.count==null?"":'/ ${data.count??""}',
              mainAxisAlignment:MainAxisAlignment.center,
              titleStyle: primaryMediumStyle.copyWith(fontSize: 25,color: AppColors.primaryDark.withOpacity(0.5)),
              valueStyle: primaryMediumStyle.copyWith(
                  fontSize: 14, color: AppColors.primaryDark.withOpacity(0.4)),
            ),

            15.ph,
            InkWell(
                onTap: () {
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
            GestureDetector(
              onTap: () async {
               int   count= data.count??100000000000;
                if (value >=count ) {
                  HelperMethods.showErrorToast("لقد  وصلت  الي  نهاية العدد");
                  await _audioPlayer.play(AssetSource('audio.mpeg'));
                } else {
                  value++;
                  setState(() {});
                }
              },
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: Decorations.kDecorationTopBorder(
                  color: primaryColor,
                ),
                child: Center(
                  child: Icon(Icons.ads_click_outlined,
                      color: whiteTextColor, size: 100),
                ),
              ),
            ),

          ],
        );
      }),
    );
  }

  final AudioPlayer _audioPlayer = AudioPlayer();

  Widget experiments() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            pushNamed(Routes.experimentsPage);
          },
          child: Container(
            padding: 8.paddingVert + 30.paddingHoriz,
            decoration: Decorations.kDecorationBorderRadius(
                radius: 8,
                borderColor: primaryColor,
                color: primaryColor.withOpacity(0.04)),
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
