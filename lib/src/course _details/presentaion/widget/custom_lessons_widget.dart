import '../../../../core/components/base_stateless_widget.dart';
import '../../../../core/widgets/button_sheet/custom_bottom_sheet.dart';
import '../../../../core/widgets/images/flip_asset_image.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';
import '../../domin/entities/course_details.dart';
import 'custom_lesson_item.dart';

class CustomLessonsWidget extends BaseStatelessWidget {
  final CourseDetails courseDetails;
  CustomLessonsWidget({super.key,required this.courseDetails,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 10.paddingHoriz+16.paddingVert,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
           ...courseDetails.subjects!.map((e) => CustomLessonItem(subject: e, department: courseDetails.department!,)),
            // 30.ph,
            // PrimaryButton(
            //   title: strings.subscription,
            //   onPressed: (){
            //     showModalBottomSheet(
            //       backgroundColor:Colors.white,
            //       context: context,
            //       isScrollControlled: true,
            //       builder: (context) =>   CustomBottomSheet(),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
  List items=[1,2,3,4];
}
