import 'package:app/core/exceptions/extensions.dart';
import 'package:app/core/widgets/text-field/custom_text_field.dart';

import '../../../../../core/utils/date_formatter.dart';
import '../../../../../core/utils/helper_methods.dart';
import '../../../../main_index.dart';

class FilterDateWidget extends BaseStatelessWidget {
  final Function(String from, String to) onFilter;

  FilterDateWidget({super.key, required this.onFilter});

  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setSate) {
      return Row(
        children: [
          Expanded(
            child: CustomTextField(
              suffixIconPath: AppIcons.date,
              controller: fromController,
              title: strings.from,
             // margin: 16.paddingStart,
             minHeight: 55,
              isValidator: false,
              onTap: () async {
                DateTime? date = await HelperMethods.selectDate(context);
                fromController.text =
                    DateFormatter.formatTimestampString(date.toString());
                onFilter(fromController.text, toController.text);
              },
            ),
          ),
          10.pw,
          Expanded(
            child: CustomTextField(
              suffixIconPath: AppIcons.date,
              controller: toController,
             // margin: 16.paddingEnd,
              minHeight: 55,
              title: '',
              isValidator: false,
              onTap: () async {
                DateTime? date = await HelperMethods.selectDate(context);
                toController.text =
                    DateFormatter.formatTimestampString(date.toString());
                onFilter(fromController.text, toController.text);
              },
            ),
          ),
        ],
      );
    });
  }
}
class FilterDate extends BaseStatelessWidget {
  final TextEditingController controller;

  final Function() ?onFilter;

  FilterDate({super.key, required this.controller,this.onFilter});

  @override
  Widget build(BuildContext context) {
    //  InvoicesFilterParams params = InvoicesFilterParams(status: 1);
    TextEditingController insideController = TextEditingController();
    return Row(
      children: [
        Expanded(
          child: CustomTextField(
            margin: 20.paddingHoriz,
            hintText: strings.search_by_date,
            suffixIconPath: AppIcons.search,
            keyboardType: TextInputType.number,
            controller: controller,
            isValidator: false,
            onChanged: (value) {
              // params = InvoicesFilterParams(qaydNumber: value);
              // onFilter(params);
            },
          ),
        ),
        // AppIconButton(
        //   icon: AppIcons.filter,
        //   padding: 16.paddingEnd,
        //   size: 25,
        //   onPressed: () {
        //     showModalBottomSheet(
        //         shape: const RoundedRectangleBorder(
        //           borderRadius:
        //           BorderRadius.vertical(top: Radius.circular(8.0)),
        //         ),
        //         context: context,
        //         isScrollControlled: true,
        //         backgroundColor: cardColor,
        //         clipBehavior: Clip.antiAliasWithSaveLayer,
        //         builder: (BuildContext context) {
        //           return Container(
        //             height: 400,
        //             color: cardColor,
        //             child: Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 20.ph,
        //                 Center(
        //                   child: BoldText(
        //                     label: strings.search_for_invoice,
        //                   ),
        //                 ),
        //                 10.ph,
        //                 CustomTextField(
        //                   controller: insideController,
        //                   title: strings.qayd_number,
        //                   margin: 16.paddingHoriz,
        //                   keyboardType: TextInputType.number,
        //                 ),
        //                 16.ph,
        //                 FilterDateWidget(
        //                   onFilter: (date, to) {
        //                     params.from = date;
        //                     params.to = to;
        //                   },
        //                 ),
        //                 16.ph,
        //                 /*
        //                 tabssss
        //                  */
        //                 50.ph,
        //                 PrimaryButton(
        //                   title: strings.search,
        //                   margin: 16.paddingHoriz,
        //                   onPressed: () {
        //                     Navigator.pop(context);
        //                     params.qaydNumber = insideController.text;
        //                     onFilter(params);
        //                   },
        //                 )
        //               ],
        //             ),
        //           );
        //         });
        //   },
        // )
      ],
    );
  }
}
