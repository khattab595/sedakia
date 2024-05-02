
import 'package:app/core/utils/navigator.dart';
import '../../../../../core/widgets/images/image_network.dart';
import '../../../../../core/widgets/texts/texts.dart';
import '../../../../main_index.dart';
import '../../../../my_courses/data/models/my_courses_dto.dart';
import '../../../../my_courses/presentation/widgets/my_courses_item.dart';
import '../../../data/models/teacher_details_dto.dart';

class TeacherDetailsScreen extends BaseStatelessWidget {
  final TeacherDetailsDto teacherDetails;

  TeacherDetailsScreen({Key? key, required this.teacherDetails}) : super(key: key);

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
                  height: 400,
                  width: double.infinity,
                  child: ImageNetwork(image: courseImageTest2,radius: 12,fit: BoxFit.cover,)
                ),
                SingleChildScrollView(
                  child:
                  Column(
                    children: [
                      350.ph,
                      Container(
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
                              const BoldText(
                                label:'مازن محمد',
                                fontSize: 26,
                              ),
                              MediumText(
                                label:'فيزياء',
                                fontSize: 18,
                                labelColor: context.hintColor,
                              ),
                              8.ph,
                               SemiBoldText(
                                label:strings.about_the_teacher,
                                fontSize: 20,
                              ),
                              8.ph,
                              MediumText(
                                label:'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
                                fontSize: 16,
                                labelColor: context.hintColor,
                              ),
                              16.ph,
                               SemiBoldText(
                                label:strings.courses,
                                fontSize: 20,
                              ),
                              ...item.map((e) =>  InkWell(
                                onTap: (){
                                  pushNamed(Routes.courseDetailsPage);
                                },
                                child: MyCoursesItem(
                                  padding: 8.paddingVert,
                                  hasNotProgress: true,
                                  myCourse: MyCoursesDto(
                                    percentage: 0.7,
                                    name: 'الدورة التاهيلية للكيمياء للصف الرابع العلمي',
                                    department:'الكيمياء' ,
                                    teacher: 'عبدالله مصطفي',
                                    image: courseImageTest2,
                                    duration: '١ ساعة ٣٢ دقيقة',
                                  ),),
                              ),)

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
