import '../../../main_index.dart';
import '../../domain/entities/teacher.dart';
import 'custom_teacher_item.dart';

class CustomTeachersWidget extends BaseStatelessWidget {
  final StreamStateInitial<List<Teacher>?> teachersStream;

  CustomTeachersWidget({super.key, required this.teachersStream});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: StreamBuilder<List<Teacher>?>(
        stream: teachersStream.stream,
        builder: (context, snapshot) {
          return snapshot.data == null
              ? LoadingView()
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    Teacher teacher = snapshot.data![index];
                    return Padding(
                      padding: 10.paddingEnd,
                      child: CustomTeacherItem(
                        teacher: teacher,
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
