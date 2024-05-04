import 'package:app/core/utils/navigator.dart';

import '../../../../../core/widgets/texts/texts.dart';
import '../../../../main_index.dart';
import '../../../domain/entities/course_details.dart';

class CustomLessonItem extends BaseStatelessWidget {
  final Subjects subject;
  final String department;

  CustomLessonItem({super.key,required this.subject,required this.department, });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: 5.paddingVert,
      child: InkWell(
        onTap: (){
          pushNamed(Routes.lessonDetailsPage,arguments: {'subject':subject,'department':department});
        },
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: Decorations.kDecorationBorderRadius(
            radius: 12,
            color: context.primaryColor.withOpacity(0.09),
            borderColor: context.primaryColor.withOpacity(0.09),
          ),
          child: Padding(
            padding: 16.paddingHoriz,
            child: Row(
              children: [
                Padding(
                  padding: 16.paddingEnd,
                  child:  Image.asset(AppImages.video,),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.5,
                  child: Flexible(
                    child: BoldText(
                      label:subject.name!,
                      fontSize: 16,
                      labelColor: context.hintColor,
                    ),
                  ),
                ),
                const Spacer(),
                BoldText(
                  label:'${subject.m!.toStringAsFixed(0)}:${subject.s!.toStringAsFixed(0)}',
                  fontSize: 16,
                  labelColor: context.hintColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
