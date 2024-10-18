import 'package:app/core/widgets/texts/primary_texts.dart';

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
            itemCount: 10,
            itemBuilder: (context, index) {
              return const RequestDetailsItem();
            },
          ),
        ),
        totalAmount(),
        PrimaryButton(
          title: 'Complete',
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
          SemiBoldPrimaryText(
            label: 'Total',
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
