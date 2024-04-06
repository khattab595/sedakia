import '../../../../../core/widgets/texts/custom_rich_text.dart';
import '../../../../main_index.dart';

class InvoiceItem extends BaseStatelessWidget {
  // final Invoice? invoice;

  InvoiceItem({
    Key? key,
    // this.invoice,
  }) : super(key: key);

  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    //  isFavorite = invoice?.favorite ?? false;
    return InkWell(
      onTap: () {},
      child: Container(
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
                        labelStyle: bodyMedium,
                        valueStyle: bodySmall,
                      ),
                     10.ph,
                      CustomRichText(
                        value: "5258963",
                        label: "${strings.id_number}:",
                        labelStyle: bodyMedium,
                        valueStyle: bodySmall,
                      ),
                      10.ph,
                      CustomRichText(
                        value: "10:00 7-12-2024",
                        label: "${strings.date_of_qayd}:",
                        labelStyle: bodyMedium,
                        valueStyle: bodySmall,
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
                      labelStyle: bodyMedium,
                      valueStyle: bodySmall,
                    ),
                    10.ph,
                    CustomRichText(
                      value: "200 ${strings.rs}",
                      label: "${strings.the_amount}:",
                      labelStyle: bodyMedium,
                      valueStyle: bodySmall,
                    ), 10.ph,
                    CustomRichText(
                      value: "50 ${strings.day}",
                      label: "${strings.duration}:",
                      labelStyle: bodyMedium,
                      valueStyle: bodySmall,
                    ),
                  ],
                ),
              ],
            ),
            10.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
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
      ),
    );
  }
}
