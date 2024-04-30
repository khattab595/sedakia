import '../../../main_index.dart';
import '../../../my_courses/data/models/my_courses_dto.dart';
import 'custom_department_item.dart';
import 'custom_latest_course_item.dart';

class CustomLatestCoursesWidget extends BaseStatelessWidget {
  CustomLatestCoursesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...latestItems.map((e) =>
              CustomLatestCourseItem(
            myCourse: MyCoursesDto(
            percentage: 0.6,
            name: 'الدورة التاهيلية للكيمياء للصف الرابع العلمي',
            department:'الكيمياء' ,
            teacher: 'عبدالله مصطفي',
            image: courseImageTest,
            duration: '١ ساعة ٣٢ دقيقة',
          ),),
          ),
        ],
      ),
    );
  }
   List latestItems=[1,2,3,4,5,6,7,8];
  String courseImageTest='https://scontent.fcai20-5.fna.fbcdn.net/v/t39.30808-6/438733737_948519656830553_8918195012094984290_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_ohc=G1JUxOIBt0EQ7kNvgEXOL8_&_nc_ht=scontent.fcai20-5.fna&oh=00_AfD2Xhzte39iBbqctJrvpdFMocbfLvqVK3p_nrtggDWIjg&oe=66370D01';

}
