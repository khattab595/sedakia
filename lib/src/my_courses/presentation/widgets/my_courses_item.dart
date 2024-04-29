import '../../../../core/widgets/images/image_network.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';
import '../../data/models/my_courses_dto.dart';

class MyCoursesItem extends BaseStatelessWidget {
   MyCoursesItem( {super.key,required this.myCourse,});
   final MyCoursesDto myCourse;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: 16.paddingVert,
      child: Container(
        decoration:Decorations.kDecorationBorderRadius(radius: 20,
          color: const Color(0xffEFF0F9),
          borderColor:  const Color(0xffEFF0F9),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ImageNetwork(
              margin: 8.paddingAll,
              width: 150,
              radius: 20,
              height: 120,
              fit: BoxFit.cover,
              image:myCourse.image,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   MediumText(
                    label:myCourse.department!,
                    fontSize: 15,
                  ),
                  5.ph,
                   BoldText(
                    fontSize: 20,
                    textAlign: TextAlign.start,
                    label: myCourse.name!,
                  ),
                  5.ph,
                  Row(
                    children: [
                       MediumText(
                        label:myCourse.teacher!,
                        fontSize: 15,
                      ),
                      10.pw,
                      MediumText(
                        label:myCourse.duration!,
                        fontSize: 15,
                        labelColor: context.primaryColor,
                      ),
                    ],
                  ),
                  10.ph,
                  Padding(
                    padding: 16.paddingEnd,
                    child:  LinearProgressIndicator(
                      value: double.parse(myCourse.percentage.toString()),
                      color: primaryColor, //<-- SEE HERE
                      backgroundColor: const Color(0xffDCDCDC), //<-- SEE HERE
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
