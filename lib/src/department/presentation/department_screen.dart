import '../../home/domain/entities/department.dart';
import '../../home/presentation/widgets/custom_latest_course_item.dart';
import '../../main_index.dart';
import '../../my_courses/data/models/course_dto.dart';
import '../../my_courses/domain/entities/course.dart';

class DepartmentScreen extends BaseStatelessWidget {
  final List<Department> departments;

  DepartmentScreen({Key? key, required this.departments}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: 16.paddingHoriz,
        itemCount: departments.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.5,
        ),
        itemBuilder: (context, index) {
          final department = departments[index];
          return CustomLatestCourseItem(
              myCourse: Course(
                percentage: 0.6,
                name: 'الدورة التاهيلية للكيمياء للصف الرابع العلمي',
                department: 'الكيمياء',
                teacher: 'عبدالله مصطفي',
                image: 'courseImageTest',
                duration: '١ ساعة ٣٢ دقيقة',
              ));
        }
    );
  }

}
