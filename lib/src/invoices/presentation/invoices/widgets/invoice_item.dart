import 'package:app/core/widgets/texts/texts.dart';

import '../../../../../core/widgets/texts/custom_rich_text.dart';
import '../../../../main_index.dart';

class InvoiceItem extends BaseStatelessWidget {
  // final Invoice? invoice;
  final int index;

  InvoiceItem({
    Key? key,
    required this.index,
    // this.invoice,
  }) : super(key: key);

  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    //  isFavorite = invoice?.favorite ?? false;
    return Container(
      width: 150,
      //  clipBehavior: Clip.hardEdge,
      margin: 5.paddingHoriz + 14.paddingTop,
      padding: 10.paddingBottom + 16.paddingTop + 10.paddingHoriz,
      decoration: Decorations.baseDecorationRadius(),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomRichText(
                      value: "100342",
                      label: "${strings.invoice_number}:",
                    ),
                   10.ph,
                    CustomRichText(
                      value: "5258963",
                      label: "${strings.id_number}:",
                    ),
                    10.ph,
                    CustomRichText(
                      value: "10:00 7-12-2024",
                      label: "${strings.date_of_qayd}:",
                    ),
                  ]),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomRichText(
                    value: "532",
                    label: " ${strings.qayd_number}:",
                  ),
                  10.ph,
                  CustomRichText(
                    value: "200 ${strings.rs}",
                    label: "${strings.the_amount}:",
                  ), 10.ph,
                  CustomRichText(
                    value: "50 ${strings.day}",
                    label: "${strings.duration}:",
                  ),
                ],
              ),
            ],
          ),
          10.ph,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if(index == 1)
              SemiBoldText(label: "${strings.payment_date}: 5:00 7-1-2025", fontSize: 14),
              Spacer(),
              PrimaryButton(
                height: 35,
                width: 100,
                title: strings.view_invoice,
                onPressed: () {
                  Navigator.pushNamed(context, Routes.detailsInvoicesPage);
                },
                backgroundColor: context.primaryColor,
                fontSize: 11,
              ),
            ],
          )
        ],
      ),
    );
  }
}
