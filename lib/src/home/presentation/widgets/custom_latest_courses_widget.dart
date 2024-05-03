import '../../../main_index.dart';
import '../../../my_courses/data/models/course_dto.dart';
import '../../../my_courses/domain/entities/course.dart';
import '../../domain/entities/department.dart';
import 'custom_department_item.dart';
import 'custom_latest_course_item.dart';

class CustomLatestCoursesWidget extends BaseStatelessWidget {
  final StreamStateInitial<List<Course>?> recentlyCoursesStream;

  CustomLatestCoursesWidget({super.key, required this.recentlyCoursesStream});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 203,
      child: StreamBuilder<List<Course>?>(
        stream: recentlyCoursesStream.stream,
        builder: (context, snapshot) {
          return snapshot.data == null
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: 16.paddingEnd,
                      child: CustomLatestCourseItem(
                        myCourse: snapshot.data![index],
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
