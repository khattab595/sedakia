
import 'package:app/core/utils/navigator.dart';
import '../../../../../core/widgets/images/image_network.dart';
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../courses/presentation/view/widgets/my_courses_item.dart';
import '../../../../main_index.dart';
import '../../../domin/entities/teacher_details.dart';

class TeacherDetailsScreen extends BaseStatelessWidget {
  final TeacherDetails teacherDetails;
  TeacherDetailsScreen({Key? key,required this.teacherDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 395,
                  width: double.infinity,
                  child: ImageNetwork(image: teacherDetails.image!,radius: 12,fit: BoxFit.cover,)
                ),
                SingleChildScrollView(
                  child:
                  Column(
                    children: [
                      320.ph,
                      Container(
                        width: double.infinity,
                        decoration: Decorations.decorationStartEndBorder(
                          topEnd: 20,
                          topStart: 20,
                          color: Colors.white,
                        ),
                        child:  Padding(
                          padding:  20.paddingAll,
                          child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               BoldText(
                                label:teacherDetails.name!=null?teacherDetails.name!:'',
                                fontSize: 26,
                              ),
                              MediumText(
                                label:teacherDetails.department!=null?teacherDetails.department!:'',
                                fontSize: 18,
                                labelColor: context.hintColor,
                              ),
                              8.ph,
                              teacherDetails.description!=null?
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SemiBoldText(
                                    label:strings.about_the_teacher,
                                    fontSize: 20,
                                  ),
                                  8.ph,
                                  MediumText(
                                    label:teacherDetails.description!,
                                    fontSize: 16,
                                    labelColor: context.hintColor,
                                  ),
                                ],
                              ):
                              const SizedBox.shrink(),
                              16.ph,
                              teacherDetails.courses!=null&&teacherDetails.courses!.isNotEmpty?
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   SemiBoldText(
                                     label:strings.courses,
                                     fontSize: 20,
                                   ),
                                   ...teacherDetails.courses!.map((e) =>
                                       InkWell(
                                onTap: (){
                                  pushNamed(Routes.courseDetailsPage,arguments: teacherDetails.id);
                                },
                                child: MyCoursesItem(
                                  padding: 8.paddingVert,
                                  hasNotProgress: true,
                                  myCourse: e,),
                              ),
                                   )
                                 ],
                               ):
                                  const SizedBox.shrink()


                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  List item =[1,2,3];
  String courseImageTest2='https://internationalteacherstraining.com/blog/wp-content/uploads/2018/08/171219-teacher-stock.jpg';

}
