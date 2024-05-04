import '../../../../../core/utils/navigator.dart';
import '../../../../../core/widgets/images/image_network.dart';
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../main_index.dart';
import '../../../data/models/course_dto.dart';
import '../../../domain/entities/course.dart';

class MyCoursesItem extends BaseStatelessWidget {
  final Course myCourse;
  final bool? hasNotProgress;
  final EdgeInsetsGeometry? padding;
   MyCoursesItem({super.key,this.padding, required this.myCourse,this.hasNotProgress, });


  @override
  Widget build(BuildContext context) {
    print('myCourse.percentage: ${myCourse.percentage}');
    return  Padding(
      padding: padding??8.paddingVert,
      child: InkWell(
        onTap: (){
          pushNamed(Routes.courseDetailsPage,arguments: myCourse);
        },
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
                width: 121,
                radius: 20,
                height: 90,
                fit: BoxFit.cover,
                image:myCourse.image,
              ),
              Expanded(
                child: Column(
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
                    hasNotProgress==true?
                    const SizedBox.shrink():
                    Padding(
                      padding: 5.paddingEnd + 5.paddingVert,
                      child:  LinearProgressIndicator(
                        value: myCourse.percentageValue,
                        color: primaryColor, //<-- SEE HERE
                        borderRadius: BorderRadius.circular(10),
                        backgroundColor: const Color(0xffDCDCDC), //<-- SEE HERE
                      ),
                    ),
                  ],
                ),
              ),
              30.pw
            ],
          ),
        ),
      ),
    );
  }
}
