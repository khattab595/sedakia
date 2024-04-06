import 'package:app/core/widgets/buttons/outlined_button.dart';
import 'package:app/core/widgets/texts/texts.dart';

import 'filter_date_widget.dart';
import '../../../../../core/widgets/text-field/custom_text_field.dart';
import '../../../../../core/widgets/texts/row_texts.dart';
import '../../../../main_index.dart';

class DetailsInvoiceWidget extends BaseStatelessWidget {
  // final Invoice? invoice;

  DetailsInvoiceWidget({
    Key? key,
    // this.invoice,
  }) : super(key: key);
  TextEditingController amountController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          30.ph,
          RowTexts(
            title: strings.facility_name,
            value: "السعد",
          ),
          16.ph,
          const Divider(),
          16.ph,
          RowTexts(
            title: strings.location,
            value: "حي الملك فهد,الفرعي",
          ),
          16.ph,
          const Divider(),
          16.ph,
          RowTexts(
            title: strings.user_id,
            value: "522145287465",
          ),
          16.ph,
          const Divider(),
          16.ph,
          RowTexts(
            title: strings.invoice_number,
            value: "100323",
          ),
          16.ph,
          const Divider(),
          16.ph,
          RowTexts(
            title: strings.qayd_number,
            value: "532",
          ),
          16.ph,
          const Divider(),
          16.ph,
          RowTexts(
            title: strings.qayd_status,
            value: "قيد متعثر",
          ),
          16.ph,
          const Divider(),
          16.ph,
          RowTexts(
            title: strings.point_sale_mobile_number,
            value: "13100323",
          ),
          16.ph,
          const Divider(),
          16.ph,
          RowTexts(
            title: strings.mobile_point_sale,
            value: "523152684",
          ),
          16.ph,
          const Divider(),
          16.ph,
          RowTexts(
            title: strings.qayd_registeration_qayd,
            value: "10:49 17-7-2024",
          ),
          16.ph,
          const Divider(),
          16.ph,
          RowTexts(
            title: strings.the_amount,
            value: "500 ${strings.rs}",
          ),
          40.ph,
          PrimaryButton(
            title: strings.pay,
            margin: 16.paddingHoriz,
            onPressed: () {
              showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(8.0)),
                  ),
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          40.ph,
                           Center(
                            child: BoldText(
                              label: strings.search_for_invoice,
                            ),
                          ),
                          CustomTextField(
                            controller: amountController,
                            title: strings.the_amount,
                            margin: 16.paddingHoriz,
                          ),
                          16.ph,
                          FilterDateWidget(onFilter: (date) {}),
                          16.ph,
                          /*
                          tabssss
                           */
                          50.ph,
                          PrimaryButton(
                            onPressed: () {},
                            title: strings.search,
                            margin: 16.paddingHoriz,
                          )
                        ],
                      ),
                    );
                  });
            },
          ),
          16.ph,
          SecondaryButton(
            title: strings.print,
            onPressed: () {},
            margin: 16.paddingHoriz,
            radius: 6,
            borderColor: primaryColor,
          )
        ],
      ),
    );
  }
}
