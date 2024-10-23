import '../../../../core/widgets/texts/primary_texts.dart';
import '../../../main_index.dart';
import '../../domain/entities/Data.dart';

class CustomerItem extends BaseStatelessWidget {
  CustomerItem({super.key, required this.data});
  final CustomerData data;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: Decorations.shapeDecorationShadow(),
      padding: 16.paddingAll,
      margin: 20.paddingHoriz + 10.paddingBottom,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PrimaryMediumText(
            label: data.userLogin ?? "",
            fontSize: 16,
          ),
          7.ph,
          PrimaryRegularText(
            label: data.phone ?? "",
            fontSize: 12,
          ),
          5.ph,
          PrimaryRegularText(
            label: data.email ?? "",
            fontSize: 12,
          ),
        ],
      ),
    );
    ;
  }
}
