import 'package:app/core/widgets/text-field/custom_text_field.dart';
import 'package:app/core/widgets/texts/black_texts.dart';

import '../../../../../core/utils/date_formatter.dart';
import '../../../../../core/utils/helper_methods.dart';
import '../../../../core/widgets/buttons/selection_button_chip.dart';
import '../../../../core/widgets/text-field/search_text_field.dart';
import '../../../main_index.dart';

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
              suffixIconPath: AppIcons.calendar,
              controller: fromController,
              margin: 10.paddingStart,
              hintText: strings.from,
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
              suffixIconPath: AppIcons.calendar,
              controller: toController,
              margin: 10.paddingEnd,
              hintText: strings.to,
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

class FilterInvoices extends BaseStatelessWidget {
  final TextEditingController controller;
  final Function(dynamic) onFilter;

  FilterInvoices({super.key, required this.onFilter, required this.controller});

  @override
  Widget build(BuildContext context) {
    TextEditingController insideController = TextEditingController();
    List<SelectionItem> items = [
      SelectionItem(id: '1', title: 'All'),
      SelectionItem(id: '2', title: 'Processing'),
      SelectionItem(id: '3', title: 'Pending'),
      SelectionItem(id: '4', title: 'Completed'),
      SelectionItem(id: '5', title: 'Cancelled'),
      SelectionItem(id: '6', title: 'Rejected'),
    ];

    SelectionItem initialItem = items.first;

    return Row(
      children: [
        Expanded(
          child: SearchTextField(
            controller: controller,
            hintText: strings.search,
            onChanged: (value) {},
          ),
        ),
        AppIconButton(
          icon: AppIcons.filter,
          padding: 16.paddingEnd,
          color: primaryColor,
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
                          child: BlackSemiBoldText(
                            label: strings.search,
                            fontSize: 20,
                          ),
                        ),
                        // 10.ph,
                        // CustomTextField(
                        //   controller: insideController,
                        //   title: strings.id_number,
                        //   margin: 16.paddingHoriz,
                        //   keyboardType: TextInputType.number,
                        // ),
                        16.ph,
                        FilterDateWidget(
                          onFilter: (date, to) {},
                        ),
                        16.ph,
                        /*
                        tabssss
                         */
                        StatefulBuilder(builder: (context, setState) {
                          return Wrap(
                            children: items
                                .map(
                                  (e) => SelectionWidget(
                                    item: e,
                                    isSelected: initialItem == e,
                                    onSelected: (selected) {
                                      if (selected) {
                                        setState(() {
                                          initialItem = e;
                                        });
                                      }
                                    },
                                  ),
                                )
                                .toList(),
                          );
                        }),
                        50.ph,
                        PrimaryButton(
                          title: strings.search,
                          margin: 16.paddingHoriz,
                          onPressed: () {
                            Navigator.pop(context);
                            onFilter('');
                          },
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
