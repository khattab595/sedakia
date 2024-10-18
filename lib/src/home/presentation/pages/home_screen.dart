
import 'package:app/core/widgets/texts/primary_texts.dart';

import '../../../main_index.dart';
import '../../data/models/home_data_dto.dart';
import '../widgets/filter_date_widget.dart';
import '../widgets/orders_statistics.dart';
import '../widgets/charts_statistics.dart';

class HomeScreen extends BaseStatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 10.paddingAll + (kToolbarHeight - 20).paddingTop,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SemiBoldPrimaryText(
                  label: 'Statistics',
                  fontSize: 20,
                ),
                popUpMenu(),
              ],
            ),
            20.ph,
            FilterDateWidget(
              onFilter: (from, to) {},
            ),
            OrdersStatistics(
              models: List.generate(6, (index) => ModelDto()),
              onDownload: (url) {},
            ),
            Container(
              padding: 14.paddingAll,
              decoration: Decorations.shapeDecorationShadow(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SemiBoldPrimaryText(label: 'Statistics', fontSize: 20),
                  // 20.ph,
                  ChartsStatistics(
                    sliders: List.generate(6, (index) => SliderDto()),
                  ),
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
        const DropdownMenuEntry(
          value: '1',
          label: 'Weekly',
        ),
        const DropdownMenuEntry(
          value: '2',
          label: 'Monthly',
        ),
        const DropdownMenuEntry(
          value: '3',
          label: 'Yearly',
        ),
      ]),
    );
  }

}
