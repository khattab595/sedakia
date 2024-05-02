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
      padding: 10.paddingEnd,
      child: Column(
        children: [
          Container(
              decoration: Decorations.kDecorationRadius(
                  borderColor: context.dividerColor, borderWidth: 1),
              child: ImageNetwork(
                image: department.icon,
                fit: BoxFit.cover,
                height: 100,
                width: 100,
              )),
          5.ph,
          SemiBoldText(
            label: department.name!,
            fontSize: 12,
          ),
        ],
      ),
    );
  }
}
