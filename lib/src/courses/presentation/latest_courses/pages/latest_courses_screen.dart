import '../../../domain/entities/course.dart';
import '../../../../favorite/data/models/favorite_params.dart';
import '../../../../home/presentation/widgets/custom_latest_course_item.dart';
import '../../../../main_index.dart';

class LatestCoursesScreen extends BaseStatelessWidget {
  final List<Course>? courses;
  final Function(FavoriteParams) onFavorite;

  LatestCoursesScreen(
      {Key? key, required this.courses, required this.onFavorite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 226,
        mainAxisExtent: 185,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: courses!.length,
      padding: 10.paddingHoriz,
      itemBuilder: (BuildContext context, int index) {
        return CustomLatestCourseItem(
          imageHeight: 85,
          myCourse: courses![index],
          onFavorite: onFavorite,
        );
      },
    );
  }

  String courseImageTest =
      'https://scontent.fcai20-5.fna.fbcdn.net/v/t39.30808-6/438733737_948519656830553_8918195012094984290_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_ohc=G1JUxOIBt0EQ7kNvgEXOL8_&_nc_ht=scontent.fcai20-5.fna&oh=00_AfD2Xhzte39iBbqctJrvpdFMocbfLvqVK3p_nrtggDWIjg&oe=66370D01';
}
