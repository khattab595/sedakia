

import '../../../core/components/base_stateless_widget.dart';
import '../../home/domain/entities/home.dart';
import '../../home/presentation/widgets/custom_latest_course_item.dart';
import '../../main_index.dart';
import '../../my_courses/data/models/my_courses_dto.dart';

class DepartmentScreen extends BaseStatelessWidget {
  final Home home;

  DepartmentScreen({Key? key, required this.home}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      GridView.count(
          shrinkWrap: true,
          padding: 16.paddingHoriz,
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 10,
          childAspectRatio: (1 / 0.95),
          children: List.generate(20, (index) {
            return  FittedBox(child:  CustomLatestCourseItem(
              myCourse: MyCoursesDto(
                percentage: 0.6,
                name: 'الدورة التاهيلية للكيمياء للصف الرابع العلمي',
                department:'الكيمياء' ,
                teacher: 'عبدالله مصطفي',
                image: courseImageTest,
                duration: '١ ساعة ٣٢ دقيقة',
              ),));
          })
      )
    );
  }
  String courseImageTest='https://scontent.fcai20-5.fna.fbcdn.net/v/t39.30808-6/438733737_948519656830553_8918195012094984290_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_ohc=G1JUxOIBt0EQ7kNvgEXOL8_&_nc_ht=scontent.fcai20-5.fna&oh=00_AfD2Xhzte39iBbqctJrvpdFMocbfLvqVK3p_nrtggDWIjg&oe=66370D01';


}
