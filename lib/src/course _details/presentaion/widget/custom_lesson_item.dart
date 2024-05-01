import 'package:app/core/utils/navigator.dart';

import '../../../../core/widgets/images/flip_asset_image.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class CustomLessonItem extends BaseStatelessWidget {
   CustomLessonItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: 5.paddingVert,
      child: InkWell(
        onTap: (){
          pushNamed(Routes.lessonDetailsPage);
        },
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: Decorations.kDecorationBorderRadius(
            radius: 12,
            color: context.primaryColor.withOpacity(0.09),
            borderColor: context.primaryColor.withOpacity(0.09),
          ),
          child: Row(
            children: [
              Padding(
                padding: 16.paddingHoriz,
                child: const FlipAssetImage(image: AppImages.video,),
              ),
              BoldText(
                label:'الدرس الاول | القلويات',
                fontSize: 16,
                labelColor: context.hintColor,
              ),
              const Spacer(),
              BoldText(
                label:'٢٠:١١ د',
                fontSize: 16,
                labelColor: context.hintColor,
              ),
              16.pw
            ],
          ),
        ),
      ),
    );
  }
}
