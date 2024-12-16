import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../main_index.dart';
import '../../data/models/home_data_dto.dart';
import '../../data/models/monthly_dto.dart';
import '../../domain/entities/Monthly_model.dart';
import '../../domain/entities/Summary_model.dart';
import '../widgets/filter_date_widget.dart';
import '../widgets/orders_statistics.dart';
import '../widgets/charts_statistics.dart';

class HomeScreen extends BaseStatelessWidget {
  final SummaryModel summaryModel;
  final List<MonthlyDto> monthlyDto;

  HomeScreen({super.key, required this.summaryModel,required this.monthlyDto});

  @override
  Widget build(BuildContext context) {
    List<ModelDto> data = [
      ModelDto(
          name: strings.number_order,
          value: summaryModel.totalOrders.toString()),
      ModelDto(
          name: strings.number_client,
          value: summaryModel.totalCustomers.toString()),
      ModelDto(
          name: strings.number_product,
          value: summaryModel.totalProducts.toString()),
      ModelDto(
          name: strings.number_refunds,
          value: summaryModel.totalRefunds.toString()),
      ModelDto(
          name: strings.number_sales,
          value: summaryModel.totalSales.toString()),
      ModelDto(
          name: strings.average_order_value,
          value: summaryModel.averageOrderValue.toString()),
    ];
    return Padding(
      padding: 10.paddingAll ,
       //   + (kToolbarHeight - 20).paddingTop,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     SemiBoldPrimaryText(
            //       label: strings.statistics,
            //       fontSize: 20,
            //     ),
           //     popUpMenu(),
          //    ],
           // ),
           //  20.ph,
            // FilterDateWidget(
            //   onFilter: (from, to) {},
            // ),
            OrdersStatistics(
              models: List.generate(data.length, (index) => data[index]),
              onDownload: (url) {},
            ),
            Container(
              padding: 14.paddingAll,
              decoration: Decorations.shapeDecorationShadow(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SemiBoldPrimaryText(label: strings.statistics, fontSize: 20),
                  20.ph,
                  ChartsStatistics(monthlyDto: monthlyDto,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  popUpMenu() {
    return Container(
      width: 120,
      // height: 50,
      decoration: Decorations.kDecorationBorderRadius(),
      child: DropdownMenu(
          initialSelection: '1',
          // menuStyle: MenuStyle(
          //   padding: MaterialStateProperty.all(0.paddingAll),
          //   elevation: MaterialStateProperty.all(8.0),
          //   fixedSize: MaterialStateProperty.all(const Size(50, 50)),
          //   maximumSize: MaterialStateProperty.all(const Size(50, 50)),
          //   visualDensity: const VisualDensity(
          //     horizontal: -4,
          //     vertical: -4,
          //   ),
          // ),
          inputDecorationTheme: InputDecorationTheme(
            border: InputBorder.none,
            contentPadding: 5.paddingStart,
            isDense: true,
            constraints: const BoxConstraints(
              minHeight: 40,
              minWidth: 120,
              maxHeight: 40,
              maxWidth: 120,
            ),
          ),
          dropdownMenuEntries: [
            DropdownMenuEntry(
              value: '1',
              label: strings.weakly,
            ),
            DropdownMenuEntry(
              value: '2',
              label: strings.monthly,
            ),
            DropdownMenuEntry(
              value: '3',
              label: strings.yearly,
            ),
          ]),
    );
  }
}
