import '../../../main_index.dart';
import '../../../request_log/domain/entities/course.dart';
import '../widgets/project_item.dart';

class HomeScreen extends BaseStatelessWidget {
  final StreamStateInitial<Course?> currentProjectStream;
  final StreamStateInitial<List<Course>?> projectsStream;

  HomeScreen({
    super.key,
    required this.currentProjectStream,
    required this.projectsStream,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StreamBuilder<Course?>(
            stream: currentProjectStream.stream,
            builder: (context, snapshot) {
              Course myCourse = snapshot.data ?? Course();
              return snapshot.data?.id == null ? 0.ph : const Text('ProjectItem');
            },
          ),
          StreamBuilder<List<Course>?>(
            stream: projectsStream.stream,
            builder: (context, snapshot) {
              List<Course> myCourses = snapshot.data ?? [];
              return snapshot.data?.isEmpty ?? true
                  ? const CircularProgressIndicator()
                  : ListView.builder(
                      itemCount: myCourses.length,
                      padding: 10.paddingAll,
                      itemBuilder: (context, index) {
                        return ProjectItem(
                          currentProjectStream: currentProjectStream,
                        );
                      },
                    );
            },
          ),
        ],
      ),
    );
  }
}
