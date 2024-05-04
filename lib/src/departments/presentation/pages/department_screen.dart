import '../../../courses/domain/entities/course.dart';
import '../../../favorite/data/models/favorite_params.dart';
import '../../../home/presentation/widgets/custom_latest_course_item.dart';
import '../../../main_index.dart';

class DepartmentScreen extends BaseStatelessWidget {
  final List<Course> courses;
  final Function(FavoriteParams) onFavorite;

  DepartmentScreen({Key? key, required this.courses, required this.onFavorite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: 16.paddingAll,
      itemCount: courses.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 226,
        mainAxisExtent: 210,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        final course = courses[index];
        return CustomLatestCourseItem(myCourse: course, onFavorite: onFavorite);
      },
    );
  }
}
