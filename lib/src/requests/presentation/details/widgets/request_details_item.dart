import 'package:app/core/widgets/images/image_network.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../../core/widgets/texts/hint_texts.dart';
import '../../../../main_index.dart';


class RequestDetailsItem extends StatelessWidget {
  const RequestDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: 15.paddingHoriz+10.paddingTop,
       padding: 14.paddingAll,
      decoration: Decorations.shapeDecorationShadow(),
      child: Row(
        children: [
          const ImageNetwork(
            image: 'https://daniellegervino.com/wp-content/uploads/2022/06/Blog-Collages-Long-2.png',
            width: 79,
            height: 94,
            radius: 20,
          ),
          10.pw,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryBoldText(label: 'حجاب',fontSize: 16,),
              5.ph,
              HintRegularText(label: 'ملابس', fontSize: 13),
              5.ph,
              PrimaryRegularText(label: '10 قطع', fontSize: 13),
            ],
          ),
          const Spacer(),
          PrimaryMediumText(label: '500\$'),
        ],
      ),
    );
  }
}
