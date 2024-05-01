import '../../../../core/utils/navigator.dart';
import '../../../main_index.dart';
import 'custom_department_item.dart';

class CustomDepartmentsWidget extends BaseStatelessWidget {
   CustomDepartmentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...departmentsItems.map((e) => InkWell(
              onTap: (){
                pushNamed(Routes.departmentPage);
              },
              child: CustomDepartmentItem())),
        ],
      ),
    );
  }
   List departmentsItems=[1,2,3,4,5,6,7,8];

}
