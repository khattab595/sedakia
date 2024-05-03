import '../../../../core/widgets/images/image_network.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';
import '../../domain/entities/department.dart';

class CustomDepartmentItem extends BaseStatelessWidget {
  final Department department;

  CustomDepartmentItem({
    super.key,
    required this.department,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 8.paddingEnd,
      child: Column(
        children: [
          Container(
              decoration: Decorations.kDecorationRadius(
                  borderColor: context.dividerColor, borderWidth: 1,radius: 12),
              child: Padding(
                padding: 12.paddingHoriz+10.paddingVert,
                child: ImageNetwork(
                  image: department.icon,
                  fit: BoxFit.cover,
                  height: 80,
                  width: 76,
                ),
              )),
          8.ph,
          SemiBoldText(
            label: department.name!,
            fontSize: 12,
          ),
        ],
      ),
    );
  }
}
