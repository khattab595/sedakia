import '../../../home/domain/entities/teacher.dart';
import '../../../home/presentation/widgets/custom_teacher_item.dart';
import '../../../main_index.dart';

class TeachersScreen extends BaseStatelessWidget {
  final List<Teacher> teachers;

  TeachersScreen({Key? key, required this.teachers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        mainAxisSpacing: 14,
        crossAxisSpacing: 14
      ),
      padding: 20.paddingAll,
      itemCount: teachers.length,
      itemBuilder: (context, index) {
        return CustomTeacherItem(
          width: double.infinity,
          teacher: teachers[index],
          height: 250,
        );
      },
    );
  }
}
