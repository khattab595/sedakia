import '../../home/presentation/widgets/custom_latest_course_item.dart';
import '../../home/presentation/widgets/custom_text.dart';
import '../../main_index.dart';
import '../../my_courses/data/models/course_dto.dart';
import '../../my_courses/domain/entities/course.dart';

class LatestCoursesScreen extends BaseStatelessWidget {
  final  List<Course>? courses;

  LatestCoursesScreen({Key? key, required this.courses}) : super(key: key);

  List item =['الكل','التربية الاسلامية','اللغة العربية','الكيمياء'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      Column(
        children: [
          // 8.ph,
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: [
          //       ...item.map((e) =>  CustomText(text: e,),)
          //     ],
          //   ),
          // ),
          Expanded(
            child: Padding(
              padding: 20.paddingHoriz+0.paddingVert,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.95,
                  mainAxisSpacing:16,
                 crossAxisSpacing:15
                ),
                itemCount: courses!.length,
                itemBuilder: (BuildContext context, int index) {
                   return
                     CustomLatestCourseItem(
                         imageHeight: 85,
                          myCourse: courses![index]);
                },
              ),
            ),
          )
        ],
      )
    );
  }
  String courseImageTest='https://scontent.fcai20-5.fna.fbcdn.net/v/t39.30808-6/438733737_948519656830553_8918195012094984290_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_ohc=G1JUxOIBt0EQ7kNvgEXOL8_&_nc_ht=scontent.fcai20-5.fna&oh=00_AfD2Xhzte39iBbqctJrvpdFMocbfLvqVK3p_nrtggDWIjg&oe=66370D01';


}
