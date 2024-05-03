import 'package:app/src/lesson_details/presentation/widget/custom_lesson_file_item.dart';
import '../../../core/widgets/images/flip_asset_image.dart';
import '../../../core/widgets/texts/texts.dart';
import '../../course _details/domin/entities/course_details.dart';
import '../../main_index.dart';

class LessonDetailsScreen extends BaseStatelessWidget {
  final Subjects subject;
  final String department;

  LessonDetailsScreen( {Key? key, required this.subject,required this.department,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const SizedBox(
                height: 225,
                width: double.infinity,
                child: FlipAssetImage(image: AppImages.videoTest,)),
           Padding(
             padding: 20.paddingHoriz,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 16.ph,
                 MediumText(
                   label:department,
                   fontSize: 16,
                   labelColor: context.hintColor,
                 ),
                  SemiBoldText(
                   label:subject.name!,
                   fontSize: 20,
                 ),
                 8.ph,
                 MediumText(
                   label:subject.description!,
                   fontSize: 16,
                   labelColor: context.hintColor,
                 ),
                 20.ph,
                 SemiBoldText(
                   label:strings.lesson_files,
                   fontSize: 20,
                 ),
                 10.ph,
                 ...items.map((e) => CustomLessonFileItem())
               ],
             ),
           )
          ],
        ),
      )
    );
  }
 List items =[1,2,3];

}
