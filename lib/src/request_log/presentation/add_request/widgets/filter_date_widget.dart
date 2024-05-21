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

