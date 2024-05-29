import 'package:app/core/exceptions/extensions.dart';
import 'package:app/core/widgets/drop_down/drop_down.dart';
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
              radius: 10,
              suffixIconPath: AppIcons.date,
              controller: fromController,
              title: strings.set_your_absent_time,
              hintText: strings.from,
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
              radius: 10,
              suffixIconPath: AppIcons.date,
              controller: toController,
              hintText: strings.to,
              // margin: 16.paddingEnd,
              minHeight: 55,
              title: "",
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
  final int value;

  final Function(int )? onFilter;

  FilterDate({super.key, required this.controller, this.onFilter, required this.value});
  List years = [
    "2010",
    "2011",
    "2012",
    "2013",
    "2014",
    "2015",
    "2016",
    "2017",
    "2018",
    "2019",
    "2020",
    "2021",
    "2022",
    "2023",
    "2024"
  ];
  List monthAr = [
    "يناير",
    "فبراير",
    "مارس",
    "أبريل",
    "مايو",
    "يونيو",
    "يوليو",
    "أغسطس",
    "سبتمبر",
    "أكتوبر",
    "نوفمبر",
    "ديسمبر"
  ];
  List monthEn = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  @override
  Widget build(BuildContext context) {
    //  InvoicesFilterParams params = InvoicesFilterParams(status: 1);
    return Padding(
      padding: 20.paddingHoriz + 10.paddingTop,
      child: SizedBox(
        height: 48,
        child: Row(
          children: [
            Expanded(
                child: DropDownField(
                    value: years.last,
                    items: years.map((e) => DropDownItem(title: e,id: e)).toList(),
                    onChanged: (onChanged) {})),
            10.pw,
            Expanded(
                child: DropDownField(
                  value: value == 1
                      ? monthAr[value - 1]
                      : monthAr[value - 1],
                    items: isRtl()
                        ? monthAr.map((e) => DropDownItem(title: e,id: e)).toList()
                        : monthEn.map((e) => DropDownItem(title: e,id: e)).toList(),
                    onChanged: (onChanged) {
                    int index = monthAr.indexOf(onChanged.id);
                    print("monthAr : $index");
                      onFilter?.call(index + 1);
                    })),
          ],
        ),
      ),
    );
  }
}
