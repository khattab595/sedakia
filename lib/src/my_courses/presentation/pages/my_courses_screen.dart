import '../../../../core/widgets/custom_empty_widget.dart';
import '../../../main_index.dart';
import '../../data/models/my_courses_dto.dart';
import '../widgets/my_courses_item.dart';

class MyCoursesScreen extends BaseStatelessWidget {
  final List<MyCoursesDto> myCourses;
  MyCoursesScreen({Key? key,required this.myCourses,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(myCourses.isEmpty){
      return CustomEmptyWidget(image:AppImages.myCoursesEmpty, text: strings.my_courses_empty_text,
        title:strings.my_courses_empty_title,hasButton: true,onPressed: (){},titleButton: strings.my_courses_checked,);
    }
    else{
      return ListView.builder(
        itemCount: myCourses.length,
        padding: 10.paddingAll,
        itemBuilder: (context, index) {
          return MyCoursesItem(
             myCourse: myCourses[index],
          );
        },
      );
    }
  }
}
