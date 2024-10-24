import 'package:app/core/widgets/text-field/custom_text_field.dart';
import 'package:app/core/widgets/texts/black_texts.dart';

import '../../../../../core/utils/date_formatter.dart';
import '../../../../../core/utils/helper_methods.dart';
import '../../../../core/widgets/buttons/selection_button_chip.dart';
import '../../../../core/widgets/text-field/search_text_field.dart';
import '../../../main_index.dart';
import '../../../product/data/models/search_params.dart';

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
  final Function(SearchParams) onFilter;
  final Function(SearchParams params) onSearch;

  FilterInvoices(
      {super.key,
      required this.onFilter,
      required this.controller,
      required this.onSearch});
  String? startDate;
  String? endDate;
  String? status;

  @override
  Widget build(BuildContext context) {
    List<SelectionItem> items = [
      SelectionItem(id: '1', title: 'pending-payment'),
      SelectionItem(id: '2', title: 'processing'),
      SelectionItem(id: '3', title: 'on-hold'),
      SelectionItem(id: '4', title: 'completed'),
      SelectionItem(id: '5', title: 'cancelled'),
      SelectionItem(id: '6', title: 'refunded'),
    ];

    SelectionItem initialItem = items.first;

    return Row(
      children: [
        Expanded(
          child: SearchTextField(
            controller: controller,
            hintText: strings.search,
            onChanged: (value) {
              onSearch(SearchParams(searchText: value));
            },
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
                    height: 480,
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

                        16.ph,
                        FilterDateWidget(
                          onFilter: (date, to) {
                            startDate = date;
                            endDate = to;
                          },
                        ),
                        16.ph,

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
                                          status = initialItem.title;
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

                            onFilter(SearchParams(
                                dateFrom: startDate,
                                dateTo: endDate,
                                status: status));
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
