import 'package:app/core/utils/navigator.dart';

import '../../../../core/widgets/images/image_network.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';
import '../../../my_courses/data/models/course_dto.dart';
import '../../../my_courses/domain/entities/course.dart';

class CustomLatestCourseItem extends BaseStatelessWidget {
  final Course myCourse;
  final double? imageHeight;
   CustomLatestCourseItem( {super.key,required this.myCourse,this.imageHeight, });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        pushNamed(Routes.courseDetailsPage,arguments: myCourse.id);
      },
      child: Container(
          width: 226,
          decoration:  Decorations.kDecorationRadius(
              borderColor: context.dividerColor,
              radius: 20,
              borderWidth: 1
          ),
          child: Padding(
            padding: 10.paddingHoriz+10.paddingTop+7.paddingBottom,
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                        height:imageHeight??115,
                        width: double.infinity,
                        child: ImageNetwork(image: myCourse.image!,radius: 12,)),
                    const Positioned(
                        top: 8,
                        left: 8,
                        child: Icon(Icons.favorite_outline,color: Color(0xffDCDCDC),))
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      4.ph,
                      MediumText(
                        label:myCourse.department!,
                        fontSize: 12,
                      ),
                      Flexible(
                        child: BoldText(
                          fontSize: 14,
                          textAlign: TextAlign.start,
                          label:myCourse.name!,
                        ),
                      ),
                      FittedBox(
                        child: Row(
                          children: [
                            MediumText(
                              label:myCourse.teacher!,
                              fontSize: 10,
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
                ),
              ],
            ),
          )
      ),
    );
  }
   String courseImageTest2='https://scontent.fcai20-5.fna.fbcdn.net/v/t39.30808-6/440976310_122170194302033769_5263769102648781001_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=5f2048&_nc_ohc=NgsDMHpmuVcQ7kNvgHfHuU7&_nc_ht=scontent.fcai20-5.fna&oh=00_AfCev4LJ8StPAObhGsTcozk3mhhkI18Wgb-LsGACIHspaw&oe=66371DD2';

}
