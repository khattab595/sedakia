import 'package:app/core/utils/navigator.dart';

import '../../../../../core/widgets/texts/hint_texts.dart';
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/course_details.dart';

class CustomLessonItem extends BaseStatelessWidget {
  final Lesson subject;

  CustomLessonItem({super.key,required this.subject });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: 5.paddingVert,
      child: InkWell(
        onTap: (){
          pushNamed(Routes.lessonDetailsPage, arguments: subject);
        },
        child: Container(
          width: double.infinity,
          padding: 16.paddingAll,
          decoration: Decorations.kDecorationBorderRadius(
            radius: 12,
            color: context.primaryColor.withOpacity(0.09),
            borderColor: context.primaryColor.withOpacity(0.09),
          ),
          child: Row(
            children: [
              Image.asset(AppImages.video,),
              16.pw,
              Expanded(
                child: HintBoldText(
                  label:subject.name ?? '',
                  fontSize: 16,
                ),
              ),
              10.pw,
              HintBoldText(
                label:'${subject.m!.toStringAsFixed(0)}:${subject.s!.toStringAsFixed(0)}',
                fontSize: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
