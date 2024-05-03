

import '../../main_index.dart';
import '../../my_courses/data/models/course_dto.dart';
import '../../my_courses/presentation/widgets/my_courses_item.dart';

class FavoriteScreen extends BaseStatelessWidget {
  final  home;

  FavoriteScreen({Key? key, required this.home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      Padding(
        padding: 16.paddingHoriz,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ...items.map((e) => MyCoursesItem(
                padding: 8.paddingVert,
                hasNotProgress: true,
                myCourse:
                CourseDto(
                  percentage: 0.7,
                  name: 'الدورة التاهيلية للكيمياء للصف الرابع العلمي',
                  department:'الكيمياء' ,
                  teacher: 'عبدالله مصطفي',
                  image: courseImageTest,
                  duration: '١ ساعة ٣٢ دقيقة',
                ),),),
              16.ph
            ],
          ),
        ),
      )
    );
  }
  List items=[1,2,3,4,5,6,8];
  String courseImageTest='https://scontent.fcai20-5.fna.fbcdn.net/v/t39.30808-6/438733737_948519656830553_8918195012094984290_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_ohc=G1JUxOIBt0EQ7kNvgEXOL8_&_nc_ht=scontent.fcai20-5.fna&oh=00_AfD2Xhzte39iBbqctJrvpdFMocbfLvqVK3p_nrtggDWIjg&oe=66370D01';

}
