import 'package:flutter/material.dart';
import 'package:flutter_custom_month_picker/flutter_custom_month_picker.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../core/components/base_stateless_widget.dart';
import '../../../../core/utils/date_formatter.dart';
import '../../../../core/widgets/text-field/custom_text_field.dart';

class MonthPickerWidget extends BaseStatelessWidget {
  final Function(DateTime date) onDateChange;
  MonthPickerWidget({required this.onDateChange});

  DateTime _dateTime = DateTime.now();
  final _streamController = BehaviorSubject<String>();
  Stream<String> get stream => _streamController.stream;
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return datePickerWidget(context);
  }

  Widget datePickerWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 12, top: 16),
      child: CustomTextField(
        title: strings.search,
        maxLines: 1,
        controller: dateController,
        //enabled: false,
        onTap: ()   {
           showMonthPicker(context, onSelected: (month, year) {
            dateController.text = " $month , $year";
          },
              initialSelectedMonth: 3,
              initialSelectedYear: 2021,
              firstYear: 2000,
              lastYear: 2025,

              firstEnabledMonth: 3,
              lastEnabledMonth: 10,
              selectButtonText: 'OK',
              cancelButtonText: 'Cancel',
              highlightColor: Colors.purple,
              textColor: Colors.black,
              contentBackgroundColor: Colors.white,
              dialogBackgroundColor: Colors.grey[200]);
        },
      ),
    );
  }

  DateTime minDate() {
    final now = DateTime.now();
    return DateTime(now.year - 1);
  }

  String dateString(DateTime date) {
    return DateFormatter.monthNameYear(date);
  }

  DateTime maxDate() {
    final now = DateTime.now();
    return DateTime(now.year, now.month + 1);
  }
}
