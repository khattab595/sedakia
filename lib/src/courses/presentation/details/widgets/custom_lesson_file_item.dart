
import 'package:app/core/utils/helper_methods.dart';

import '../../../../../core/components/base_stateless_widget.dart';
import '../../../../../core/widgets/images/flip_asset_image.dart';
import '../../../../../core/widgets/texts/hint_texts.dart';
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/course_details.dart';

class CustomLessonFileItem extends BaseStatelessWidget {
  final Lesson lesson;
  CustomLessonFileItem({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: 5.paddingVert,
      child: InkWell(
        onTap: (){
          HelperMethods.launchURL(lesson.driveLink ?? '');
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
                child: const FlipAssetImage(image: AppImages.file,),
              ),
              Expanded(
                child: HintBoldText(
                  label:'ملف ${lesson.name}',
                  fontSize: 16,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
