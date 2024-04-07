import 'package:app/core/exceptions/extensions.dart';
import 'package:app/core/widgets/text-field/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/assets/app_icons.dart';
import '../../../../../../../core/components/base_stateless_widget.dart';
import '../../../../../core/utils/date_formatter.dart';
import '../../../../../core/utils/helper_methods.dart';
import '../../../../../core/widgets/buttons/app_icon_button.dart';
import '../../../../../core/widgets/buttons/primary_button.dart';
import '../../../../../core/widgets/texts/texts.dart';

class FilterDateWidget extends BaseStatelessWidget {
  FilterDateWidget({super.key, required this.onFilter});

  Function(String date) onFilter;
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();

  String? dateString;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setSate) {
      return Row(
        children: [
          Expanded(
            child: CustomTextField(
              suffixIconPath: AppIcons.calender1,
              controller: fromController,
              title: strings.registeration_date,
              margin: 16.paddingHoriz,
              hintText: dateString ?? strings.from,
              isValidator: false,
              onTap: () async {
                DateTime? date = await HelperMethods.selectDate(context);
                fromController.text = DateFormatter.formatTimestampString(date.toString());
                onFilter(dateString!);
              },
            ),
          ),
          Expanded(
            child: CustomTextField(
              suffixIconPath: AppIcons.calender1,
              controller: toController,
              margin: 16.paddingHoriz,
              title: '',
              hintText: dateString ?? strings.to,
              isValidator: false,
              onTap: () async {
                DateTime? date = await HelperMethods.selectDate(context);
                toController.text = DateFormatter.formatTimestampString(date.toString());
                onFilter(dateString!);
              },
            ),
          ),
        ],
      );
    });
  }
}


class FilterInvoices extends BaseStatelessWidget {
   FilterInvoices({super.key});

  @override
  Widget build(BuildContext context) {


    TextEditingController amountController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Row(
        children: [
          Expanded(
            child: CustomTextField(
              margin: 16.paddingHoriz,
              hintText: strings.look_for_a_qayd,
              suffixIconPath: AppIcons.searchInvoice,
              isValidator: false,
            ),
          ),
          AppIconButton(
            icon: AppIcons.filter,
            padding: 16.paddingEnd + 8.paddingTop,
            size: 25,
            onPressed: () {
              showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.vertical(top: Radius.circular(8.0)),
                  ),
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: cardColor,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  builder: (BuildContext context) {
                    return Container(
                      height: 400,
                      color: cardColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          20.ph,
                          Center(
                            child: BoldText(
                              label: strings.search_for_invoice,
                            ),
                          ),
                          10.ph,
                          CustomTextField(
                            controller: amountController,
                            title: strings.the_amount,
                            margin: 16.paddingHoriz,
                            keyboardType: TextInputType.number,
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
          )
        ],
      );
  }
}
