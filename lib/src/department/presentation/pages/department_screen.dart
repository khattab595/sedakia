import '../../../home/presentation/widgets/custom_latest_course_item.dart';
import '../../../main_index.dart';
import '../../../my_courses/domain/entities/course.dart';

class DepartmentScreen extends BaseStatelessWidget {
  final List<Course> courses;
  DepartmentScreen({Key? key, required this.courses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: 16.paddingHoriz,
        itemCount: courses.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.5,
        ),
        itemBuilder: (context, index) {
          final course = courses[index];
          return CustomLatestCourseItem(
              myCourse: course);
        }
    );
  }

}
