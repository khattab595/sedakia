import 'package:app/core/exceptions/extensions.dart';
import 'package:app/core/widgets/text-field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../core/assets/app_icons.dart';
import '../../../../../../../core/components/base_stateless_widget.dart';
import '../../../../../../../core/decorations/decorations.dart';
import '../../../../../core/themes/colors.dart';
import '../../../../../core/utils/date_formatter.dart';
import '../../../../../core/utils/helper_methods.dart';

class FilterDateWidget extends BaseStatelessWidget {
  FilterDateWidget({super.key, required this.onFilter});

  Function(String date) onFilter;
  TextEditingController amountController = TextEditingController();

  String? dateString;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setSate) {
      return Row(
        children: [
          Expanded(
            child: CustomTextField(

              suffixIcon: IconButton(
                  onPressed: () async {
                    DateTime? date = await HelperMethods.selectDate(context);
                    dateString = DateFormatter.formatToTime(date.toString());
                    onFilter(dateString!);
                    setSate(() {});
                  },
                  icon: const Icon(Icons.date_range_sharp,        //AppIcons.date
                      color:
                          kGrayColor2)),
              controller: amountController,
              title: strings.registeration_date,
              margin: 16.paddingHoriz,
              hintText: dateString ?? strings.from,

            ),
          ),
          Expanded(
            child: CustomTextField(
              suffixIcon: IconButton(
                onPressed: () async {
                  DateTime? date = await HelperMethods.selectDate(context);
                  dateString = DateFormatter.formatToTime(date.toString());
                  onFilter(dateString!);
                  setSate(() {});
                },
                icon: const Icon(Icons.date_range_sharp),
                color: kGrayColor2,
              ),
              controller: amountController,
              title: "",
              margin: 16.paddingHoriz,
              hintText: dateString ?? strings.to,

            ),
          ),
        ],
      );
    });
  }
}
