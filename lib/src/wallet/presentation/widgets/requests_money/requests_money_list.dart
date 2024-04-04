import 'package:app/src/main_index.dart';

///  Created by harbey on 11/8/2023.
class RequestsMoneyList extends BaseStatelessWidget {
  final List<String> paymentMethods;
  final Function()? onDeleteMethod;

  RequestsMoneyList(
      {Key? key, required this.paymentMethods, this.onDeleteMethod})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: 10.paddingHoriz + 10.paddingVert,
            margin: 15.paddingHoriz + 15.paddingBottom,
            decoration:
                Decorations.kDecorationOnlyRadius(color: context.errorColor),
            child: Text(
              'You can\'t request a money',
              style: context.labelSmall.copyWith(fontSize: 12),
            ),
          ),
          Container(
            padding: 10.paddingHoriz + 10.paddingVert,
            margin: 15.paddingBottom,
            color: context.hintColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(strings.name,
                      style: context.headlineMedium.copyWith(fontSize: 10)),
                ),
                Expanded(
                  child: Text(strings.method,
                      style: context.headlineMedium.copyWith(fontSize: 10)),
                ),
                Expanded(
                  child: Text(strings.status,
                      style: context.headlineMedium.copyWith(fontSize: 10)),
                ),
                Expanded(
                  child: Text(strings.active,
                      style: context.headlineMedium.copyWith(fontSize: 10)),
                ),
                Expanded(
                  child: Text(strings.date,
                      style: context.headlineMedium.copyWith(fontSize: 10)),
                ),
              ],
            ),
          ),
          ListView.builder(
              itemCount: paymentMethods.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding: 10.paddingHoriz + 10.paddingVert,
                  margin: 15.paddingBottom,
                  color: context.hintColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text('Ahmed',
                            style:
                                context.headlineMedium.copyWith(fontSize: 10)),
                      ),
                      Expanded(
                        child: Text('Cash',
                            style:
                                context.headlineMedium.copyWith(fontSize: 10)),
                      ),
                      Expanded(
                        child: Text('Status',
                            style:
                                context.headlineMedium.copyWith(fontSize: 10)),
                      ),
                      Expanded(
                        child: Text('Active',
                            style:
                                context.headlineMedium.copyWith(fontSize: 10)),
                      ),
                      Expanded(
                        child: Text('12/3/2023',
                            style:
                                context.headlineMedium.copyWith(fontSize: 8)),
                      ),
                    ],
                  ),
                );
              }),
          // DataTable(
          //   dividerThickness: 0,
          //   showBottomBorder: false,
          //   horizontalMargin: 12,
          //   checkboxHorizontalMargin: 200,
          //   headingRowHeight: 200,
          //   decoration: Decorations.kDecorationOnlyRadius(
          //       color: context.hintColor,
          //     radius: 0,
          //   ),
          //   columns: <DataColumn>[
          //     DataColumn(
          //       label: Text(strings.name,
          //           style: context.headlineLarge.copyWith(fontSize: 10)),
          //     ),
          //     DataColumn(
          //       label: Text(strings.method,
          //           style: context.headlineLarge.copyWith(fontSize: 10)),
          //     ),
          //     DataColumn(
          //       label: Text(strings.status,
          //           style: context.headlineLarge.copyWith(fontSize: 10)),
          //     ),
          //     DataColumn(
          //       label: Text(strings.active,
          //           style: context.headlineLarge.copyWith(fontSize: 10)),
          //     ),
          //     DataColumn(
          //       label: Text(strings.date,
          //           style: context.headlineLarge.copyWith(fontSize: 10)),
          //     ),
          //   ],
          //   rows: <DataRow>[
          //     DataRow(
          //       cells: <DataCell>[
          //         DataCell(
          //           Text('Ahmed',
          //               style: context.headlineLarge.copyWith(fontSize: 10)),
          //         ),
          //         DataCell(
          //           Text('Cash',
          //               style: context.headlineLarge.copyWith(fontSize: 10)),
          //         ),
          //         DataCell(
          //           Text('Status',
          //               style: context.headlineLarge.copyWith(fontSize: 10)),
          //         ),
          //         DataCell(
          //           Text('Active',
          //               style: context.headlineLarge.copyWith(fontSize: 10)),
          //         ),
          //         DataCell(Text('12/3/2023',
          //             style: context.headlineLarge.copyWith(fontSize: 8))),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
