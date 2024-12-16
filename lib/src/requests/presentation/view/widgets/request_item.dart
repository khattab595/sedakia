import 'package:app/core/utils/helper_methods.dart';
import 'package:app/core/utils/navigator.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../main_index.dart';
import '../../../domain/entities/Data.dart';
import '../../details/pages/request_details_page.dart';

class RequestItem extends StatelessWidget {
  const RequestItem({super.key, required this.data});
  final OrderData data;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        push(RequestDetailsPage(id:int.parse( data.id.toString())));
      },
      child: Container(
        margin: 10.paddingAll,
        padding: 14.paddingAll,
        decoration: Decorations.shapeDecorationShadow(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryBoldText(
              label: data.customerName ?? "",
              fontSize: 16,
            ),
            5.ph,
            PrimaryRegularText(
              label: data.phone ?? "",
              fontSize: 13,
            ),
            5.ph,
            PrimaryRegularText(
              label:
                  '${data.shippingAddress?.address2} , ${data.shippingAddress?.address1}',
              fontSize: 13,
            ),
            5.ph,
            PrimaryRegularText(
              label: HelperMethods.getDate(data.dateCreated ?? ""),
              fontSize: 13,
            ),
            // 5.ph,
            // PrimaryRegularText(label:"مدفوع بواسطة فيزا", fontSize: 13),
          ],
        ),
      ),
    );
  }
}
