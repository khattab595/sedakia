
import '../../../main_index.dart';
import '../../../request_log/domain/entities/course.dart';

class ProjectItem extends BaseStatelessWidget {
  final StreamStateInitial<Course?> currentProjectStream;

  ProjectItem({
    super.key,
    required this.currentProjectStream,
  });

  @override
  Widget build(BuildContext context) {
    return Text('ProjectItem');
  }
}
