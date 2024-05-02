import '../../../../core/utils/navigator.dart';
import '../../../main_index.dart';
import '../../data/models/department_dto.dart';
import 'custom_department_item.dart';

class CustomDepartmentsWidget extends BaseStatelessWidget {
   CustomDepartmentsWidget( {super.key,required this.departmentsList,});
   final List<DepartmentDto> departmentsList;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...departmentsList.map((e) => InkWell(
              onTap: (){
                pushNamed(Routes.departmentPage);
              },
              child: CustomDepartmentItem(department: e,))),
        ],
      ),
    );
  }

}
