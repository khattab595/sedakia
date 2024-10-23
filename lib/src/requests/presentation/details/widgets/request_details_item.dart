import 'package:app/core/widgets/images/image_network.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../../core/widgets/texts/hint_texts.dart';
import '../../../../main_index.dart';
import '../../../data/models/order_details_dto.dart';

class RequestDetailsItem extends BaseStatelessWidget {
   RequestDetailsItem({super.key,required this.data});
  final DataItem data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: 15.paddingHoriz + 10.paddingTop,
      padding: 14.paddingAll,
      decoration: Decorations.shapeDecorationShadow(),
      child: Row(
        children: [
           ImageNetwork(
            image:
                data.imageUrl??"",
            width: 79,
            height: 94,
            radius: 20,
          ),
          10.pw,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryBoldText(
                label: data.name??"",
                fontSize: 16,
              ),
              // 5.ph,
              // HintRegularText(label: 'ملابس', fontSize: 13),
              5.ph,
              PrimaryRegularText(label: '${data.quantity} ${strings.piece}', fontSize: 13),
            ],
          ),
          const Spacer(),
          PrimaryMediumText(label: data.total??""),
        ],
      ),
    );
  }
}
