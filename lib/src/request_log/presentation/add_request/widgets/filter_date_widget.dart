import 'package:app/core/exceptions/extensions.dart';
import 'package:app/core/widgets/drop_down/drop_down.dart';
import 'package:app/core/widgets/text-field/custom_text_field.dart';
import 'package:intl/intl.dart';

import '../../../../../core/utils/date_formatter.dart';
import '../../../../../core/utils/helper_methods.dart';
import '../../../../main_index.dart';

class FilterDateWidget extends BaseStatelessWidget {
  final Function(String from, String to) onFilter;

  FilterDateWidget({super.key, required this.onFilter});

  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  String from = DateTime.now().toString();
  String to = DateTime.now().toString();

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
              hintText: strings.from,
              // margin: 16.paddingStart,
              minHeight: 55,
             isValidator: false,
              onTap: () async {
                DateTime? date = await HelperMethods.selectDate(context);
                from = date.toString();
                fromController.text =
                    DateFormatter.formatTimestampString(from);
                to = '';
                toController.text = '';
                onFilter(from, toController.text);
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
              // validator: (value) {
              //   if (value == null || value.isEmpty) {
              //     return null;
              //   }
              //   if (DateFormat(context.languageCode).parse(from).isAfter(
              //       DateFormat(context.languageCode).parse(value ?? ""))) {
              //     return strings.invalid_date_range;
              //   }
              //   return null;
              // },
              onTap: () async {
                DateTime? date = await HelperMethods.selectDate(context, firstDate: DateTime.parse(from));
                to = date.toString();
                toController.text =
                DateFormatter.formatTimestampString(to);
                onFilter(fromController.text, to);
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

  final Function(String data) onFilterYears;
  final Function(String data) onFilterMonth;

  FilterDate(
      {super.key,
      required this.controller,
      required this.onFilterMonth,
      required this.onFilterYears,
      required this.value});
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
    int month = DateTime.now().month;
    return Padding(
      padding: 20.paddingHoriz + 10.paddingTop,
      child: SizedBox(
        height: 48,
        child: Row(
          children: [
            Expanded(
                child: DropDownField(
                    value: years.last,
                    items: years
                        .map((e) => DropDownItem(title: e, id: e))
                        .toList(),
                    onChanged: (onChanged) {
                      onFilterYears(onChanged.title ?? "");
                    })),
            10.pw,
            Expanded(
                child: DropDownField(
                    value: isRtl()
                        ? monthAr[month - 1]
                        : monthEn[month - 1],
                    items: isRtl()
                        ? monthAr
                            .map((e) => DropDownItem(title: e, id: e))
                            .toList()
                        : monthEn
                            .map((e) => DropDownItem(title: e, id: e))
                            .toList(),
                    onChanged: (onChanged) {
                      int index = isRtl()
                          ? monthAr.indexOf(onChanged.id)
                          : monthEn.indexOf(onChanged.id);
                      print("monthAr : $index");
                      onFilterMonth("${index + 1}");
                    })),
          ],
        ),
      ),
    );
  }
}

class FilterSearchDate extends BaseStatelessWidget {
  final Function(String search) onFilter;

  FilterSearchDate({super.key, required this.onFilter});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setSate) {
      return CustomTextField(
        radius: 10,
        suffixIconPath: AppIcons.date,
        controller: searchController,
        hintText: strings.date_of_resignation,
        // margin: 16.paddingEnd,
        minHeight: 55,
        //   title: strings.date_of_resignation,
        isValidator: false,
        onTap: () async {
          DateTime? date = await HelperMethods.selectDate(context);
          searchController.text = DateFormatter.formatString(date?.toString() ?? "");
          onFilter(searchController.text);
        },
      );
    });
  }
}
