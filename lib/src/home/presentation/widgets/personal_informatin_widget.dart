import '../../../../core/widgets/images/flip_asset_image.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class PersonalInformationWidget extends BaseStatelessWidget {
  PersonalInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const FlipAssetImage(image: AppImages.avatar,height: 53,),
        10.pw,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MediumText(
              label:strings.welcome_message,
              fontSize: 14,
            ),
            const SemiBoldText(
              label:'يوسف عبدالمعطي',
              fontSize: 17,
            ),
          ],
        )
      ],
    );
  }

}
