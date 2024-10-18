import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../../../core/widgets/drop_down/drop_down.dart';
import '../../../../main_index.dart';
import '../widgets/request_details_item.dart';

class RequestDetailsScreen extends BaseStatelessWidget {
  RequestDetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return const RequestDetailsItem();
            },
          ),
        ),
        totalAmount(),

        Padding(
          padding: 15.paddingAll,
          child: DropDownField(
              title: strings.update_status,
              value: "مكتمل",
              items: const [
                DropDownItem(title: "مكتمل"),
                DropDownItem(title: "مرفوض"),
              ],
              onChanged: (item) {}),
        ),
        PrimaryButton(
          title: strings.save,
          margin: 16.paddingHoriz + 10.paddingBottom,
          onPressed: () {
            // bloc.approveRequest();
          },
        ),
      ],
    );
  }

  Widget totalAmount() {
    return Container(
      padding: 14.paddingAll,
      margin: 16.paddingAll,
      decoration: Decorations.shapeDecorationShadow(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PrimaryBoldText(
            label: strings.total,
            fontSize: 16,
          ),
          PrimaryMediumText(
            label: '700\$',
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
