import '../../../../core/widgets/images/image_network.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';
import '../../../my_courses/data/models/my_courses_dto.dart';

class CustomLatestCourseItem extends BaseStatelessWidget {
   CustomLatestCourseItem( {super.key,required this.myCourse,});
   final MyCoursesDto myCourse;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 16.paddingEnd,
      child: Container(
          width: 230,
          decoration:  Decorations.kDecorationRadius(
              borderColor: context.dividerColor,
              borderWidth: 1
          ),
          child: Padding(
            padding: 10.paddingAll,
            child:  Column(
              children: [
                SizedBox(
                    height:115,
                    width: double.infinity,
                    child: ImageNetwork(image: courseImageTest2,radius: 12,)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    5.ph,
                    MediumText(
                      label:myCourse.department!,
                      fontSize: 12,
                    ),
                    5.ph,
                    BoldText(
                      fontSize: 14,
                      textAlign: TextAlign.start,
                      label: myCourse.name!,
                    ),
                    5.ph,
                    FittedBox(
                      child: Row(
                        children: [
                          MediumText(
                            label:myCourse.teacher!,
                            fontSize: 15,
                          ),
                          10.pw,
                          MediumText(
                            label:myCourse.duration!,
                            fontSize: 10,
                            labelColor: context.primaryColor,
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),
          )
      ),
    );
  }
   String courseImageTest2='https://scontent.fcai20-5.fna.fbcdn.net/v/t39.30808-6/440976310_122170194302033769_5263769102648781001_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=5f2048&_nc_ohc=NgsDMHpmuVcQ7kNvgHfHuU7&_nc_ht=scontent.fcai20-5.fna&oh=00_AfCev4LJ8StPAObhGsTcozk3mhhkI18Wgb-LsGACIHspaw&oe=66371DD2';

}
