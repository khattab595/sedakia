import '../../../../core/utils/navigator.dart';
import '../../../main_index.dart';
import '../../domain/entities/department.dart';
import 'custom_department_item.dart';

class CustomDepartmentsWidget extends BaseStatelessWidget {
  final StreamStateInitial<List<Department>?> departmentsStream;

  CustomDepartmentsWidget({
    super.key,
    required this.departmentsStream,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: StreamBuilder<List<Department>?>(
        stream: departmentsStream.stream,
        builder: (context, snapshot) {
          return snapshot.data == null
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    Department department = snapshot.data![index];
                    return InkWell(
                      onTap: () {
                        pushNamed(Routes.departmentPage);
                      },
                      child: CustomDepartmentItem(
                        department: department,
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
