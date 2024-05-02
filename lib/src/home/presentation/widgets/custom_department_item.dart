import '../../../../core/widgets/images/flip_asset_image.dart';
import '../../../../core/widgets/images/image_network.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';
import '../../data/models/department_dto.dart';

class CustomDepartmentItem extends BaseStatelessWidget {
   CustomDepartmentItem( {super.key,required this.department,});
  final DepartmentDto department;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: 10.paddingEnd,
      child: Column(
        children: [
          Container(
              decoration:  Decorations.kDecorationRadius(
                  borderColor: context.dividerColor,
                  borderWidth: 1
              ),
              child: ImageNetwork(image: department.icon,fit: BoxFit.cover,
                height: 100,width: 100,)
          ),
          5.ph,
          SemiBoldText(
            label:department.name!,
            fontSize: 12,
          ),
        ],
      ),
    );
  }
}
