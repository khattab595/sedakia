import 'package:app/core/widgets/images/image_network.dart';
import 'package:app/src/home/data/models/home_dto.dart';

import '../../../../../core/widgets/icons/icon_text.dart';
import '../../../../main_index.dart';

class ShowMoreProduct extends StatelessWidget {
   final String? categoryName;
  const ShowMoreProduct({Key? key, this.categoryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.productsPage, arguments: categoryName);
      },
      child: Container(
        width: 150,
        clipBehavior: Clip.hardEdge,
        margin: 5.paddingHoriz,
        decoration: Decorations.decorationStartEndRadiusBorder(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 173,
              width: double.infinity,
              color: context.dividerColor.withOpacity(0.90),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppIcon(
                    icon: AppIcons.add_more,
                    size: 30,
                  ),
                  5.ph,
                  Text(
                    context.strings.see_more,
                    style: context.titleSmall
                        .copyWith(color: context.backgroundColor, fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              height: 25,
              width: double.infinity,
              color: context.secondary,
              padding: 14.paddingHoriz,
            ),
          ],
        ),
      ),
    );
  }
}
