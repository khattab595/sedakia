import '../../../../core/widgets/images/flip_asset_image.dart';
import '../../../../core/widgets/texts/texts.dart';
import '../../../main_index.dart';

class CustomDepartmentItem extends BaseStatelessWidget {
   CustomDepartmentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: 8.paddingEnd,
      child: Column(
        children: [
          Container(
              decoration:  Decorations.kDecorationRadius(
                  borderColor: context.dividerColor,
                  borderWidth: 1
              ),
              child: Padding(
                padding: 14.paddingVert+10.paddingHoriz,
                child: const FlipAssetImage(image: AppImages.books,),
              )
          ),
          5.ph,
          SemiBoldText(
            label:strings.eslam,
            fontSize: 12,
          ),
        ],
      ),
    );
  }
}
