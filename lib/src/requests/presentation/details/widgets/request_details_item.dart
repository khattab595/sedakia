import 'package:app/core/widgets/images/image_network.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../../core/widgets/texts/hint_texts.dart';
import '../../../../main_index.dart';


class RequestDetailsItem extends StatelessWidget {
  const RequestDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: 10.paddingAll,
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
              SemiBoldPrimaryText(label: 'Hijab'),
              5.ph,
              HintRegularText(label: 'Clothes', fontSize: 12),
              5.ph,
              PrimaryRegularText(label: '10 Pieces', fontSize: 12),
            ],
          ),
          const Spacer(),
          PrimaryMediumText(label: '500\$'),
        ],
      ),
    );
  }
}
