import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../../core/widgets/drop_down/drop_down.dart';
import '../../../../main_index.dart';
import '../../../data/models/order_details_dto.dart';
import '../../../data/models/status_params.dart';
import '../widgets/request_details_item.dart';

class RequestDetailsScreen extends BaseStatelessWidget {
  RequestDetailsScreen(
      {super.key, required this.data, required this.changeStatus});
  final OrderDetailsDto data;
  final Function(StatusParams params, int id) changeStatus;
  String updateAvailable = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: data.items == null || data.items!.isEmpty
              ? Center(
                  child: PrimaryMediumText(label: strings.the_list_is_empty))
              : ListView.builder(
                  itemCount: data.items?.length,
                  itemBuilder: (context, index) {
                    return RequestDetailsItem(
                      data: data.items![index],
                    );
                  },
                ),
        ),
        totalAmount(
            text1: strings.total, text2: '${data.total} ${data.currency}'),
        totalAmount(
            text1: strings.address,
            text2:
                "${data.dataBilling?.address_1} ${data.dataBilling?.address_2}"),
        totalAmount(
            text1: strings.payment_method,
            text2: data.paymentMethodTitle ?? ""),
        Padding(
          padding: 15.paddingAll,
          child: DropDownField(
              title: strings.update_status,
              value: data.status,
              items: const [
                DropDownItem(title: "pending-payment", id: '1'),
                DropDownItem(title: "processing", id: '2'),
                DropDownItem(title: "on-hold", id: '3'),
                DropDownItem(title: "completed", id: '4'),
                DropDownItem(title: "cancelled", id: '5'),
                DropDownItem(title: "refunded", id: '6'),
              ],
              onChanged: (value) {
                updateAvailable = value.title!;
              }),
        ),
        Row(
          children: [
            Expanded(
              child: PrimaryButton(
                title: strings.save,
                margin: 14.paddingHoriz + 10.paddingBottom,
                onPressed: () {
                  changeStatus(StatusParams(newStatus: updateAvailable),
                      int.parse(data.id.toString()));
                },
              ),
            ),
            Expanded(
              child: PrimaryButton(
                title: strings.print_the_invoice,
                margin: 14.paddingHoriz + 10.paddingBottom,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget totalAmount({required String text1, required String text2}) {
    return Container(
      padding: 14.paddingAll,
      margin: 16.paddingHoriz + 5.paddingVert,
      decoration: Decorations.shapeDecorationShadow(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PrimaryBoldText(
            label: text1,
            fontSize: 14,
          ),
          PrimaryMediumText(
            label: text2,
            fontSize: 14,
          ),
        ],
      ),
    );
  }
}
