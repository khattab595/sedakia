import 'package:app/src/lesson_details/presentation/widget/custom_lesson_file_item.dart';
import '../../../core/widgets/images/flip_asset_image.dart';
import '../../../core/widgets/texts/texts.dart';
import '../../home/domain/entities/home.dart';
import '../../main_index.dart';

class LessonDetailsScreen extends BaseStatelessWidget {
  final Home home;

  LessonDetailsScreen({Key? key, required this.home}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(
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
                   label:'الكيمياء',
                   fontSize: 16,
                   labelColor: context.hintColor,
                 ),
                 const SemiBoldText(
                   label:'الدرس الاول | القلويات',
                   fontSize: 20,
                 ),
                 8.ph,
                 MediumText(
                   label:'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى',
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
