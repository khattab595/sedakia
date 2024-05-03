import '../../../../core/widgets/custom_empty_widget.dart';
import '../../../main_index.dart';
import '../../../my_courses/domain/entities/course.dart';
import '../../../my_courses/presentation/widgets/my_courses_item.dart';

class FavoriteScreen extends BaseStatelessWidget {
 final List<Course> courses;
  FavoriteScreen( {Key? key,required this.courses, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(courses.isEmpty){
      return CustomEmptyWidget(image: AppImages.myCoursesEmpty, text: strings.my_courses_empty_text, title:strings.notification_empty_title,);
    }
    else{
      return SafeArea(child:
      Padding(
        padding: 16.paddingHoriz,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ...courses.map((e) => MyCoursesItem(
                padding: 8.paddingVert,
                hasNotProgress: true,
                myCourse: e,),),
              16.ph
            ],
          ),
        ),
      )
      );

    }
  }

}
