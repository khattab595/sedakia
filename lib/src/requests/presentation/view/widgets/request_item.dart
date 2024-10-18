import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../main_index.dart';

class RequestItem extends StatelessWidget {
  const RequestItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        pushNamed(Routes.requestDetailsPage);
      },
      child: Container(
        margin: 10.paddingAll,
        padding: 14.paddingAll,
        decoration: Decorations.shapeDecorationShadow(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryMediumText(label: 'Request Title'),
            5.ph,
            PrimaryRegularText(label: '+01120484981', fontSize: 12,),
            5.ph,
            PrimaryRegularText(label: '25 Apr 2024', fontSize: 12,),
          ],
        ),
      ),
    );
  }
}
