import 'package:app/src/courses/presentation/view/widgets/my_courses_item.dart';

import '../../../courses/domain/entities/course.dart';
import '../../../main_index.dart';

class RecentlyCourse extends BaseStatelessWidget {
  final StreamStateInitial<Course?> recentlyCourseStream;
  final bool? hasNotProgress;

  RecentlyCourse({
    super.key,
    required this.recentlyCourseStream,
    this.hasNotProgress,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Course?>(
      stream: recentlyCourseStream.stream,
      builder: (context, snapshot) {
        Course myCourse = snapshot.data ?? Course();
        return snapshot.data?.id == null
            ? 0.ph
            : MyCoursesItem(
                myCourse: myCourse,
                padding: 5.paddingTop + 20.paddingBottom + 12.paddingEnd,
              );
      },
    );
  }
}
