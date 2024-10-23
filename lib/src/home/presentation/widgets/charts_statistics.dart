import 'package:fl_chart/fl_chart.dart';
import '../../../main_index.dart';
import '../../data/models/home_data_dto.dart';

class ChartsStatistics extends BaseStatelessWidget {
  final List<ModelDto> sliders;

  ChartsStatistics({super.key, required this.sliders});

  @override
  Widget build(BuildContext context) {
    return PieChartSample2(
      text1: strings.total_orders,
      text2: strings.total_sales,
    );
  }
}

class PieChartSample2 extends StatefulWidget {
  final String textValue;
  final String text2;
  const PieChartSample2({
    Key? key,
    required this.textValue,
    required this.text2,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Row(
        children: <Widget>[
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Indicator(
                color: AppColors.colorF2,
                text: widget.textValue,
                isSquare: true,
              ),
              const SizedBox(
                height: 4,
              ),
              Indicator(
                color: AppColors.primaryLight,
                text: widget.text2,
                isSquare: true,
              ),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
          const SizedBox(
            width: 0,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: AppColors.colorF2,
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryLight,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: AppColors.primaryLight,
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.colorF2,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 16,
    this.textColor,
  });
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        )
      ],
    );
  }
}

// class BarChartSample2 extends StatefulWidget {
//   BarChartSample2({super.key});
//
//   final Color leftBarColor = AppColors.blueColor;
//   final Color rightBarColor = AppColors.cafColor2;
//   final Color avgColor = AppColors.primaryLight;
//
//   @override
//   State<StatefulWidget> createState() => BarChartSample2State();
// }

// class BarChartSample2State extends State<BarChartSample2> {
//   final double width = 7;
//
//   late List<BarChartGroupData> rawBarGroups;
//   late List<BarChartGroupData> showingBarGroups;
//
//   int touchedGroupIndex = -1;
//
//   @override
//   void initState() {
//     super.initState();
//     final barGroup1 = makeGroupData(0, 5, 12);
//     final barGroup2 = makeGroupData(1, 16, 12);
//     final barGroup3 = makeGroupData(2, 18, 5);
//     final barGroup4 = makeGroupData(3, 20, 16);
//     final barGroup5 = makeGroupData(4, 17, 6);
//     final barGroup6 = makeGroupData(5, 19, 1.5);
//     final barGroup7 = makeGroupData(6, 10, 1.5);
//
//     final items = [
//       barGroup1,
//       barGroup2,
//       barGroup3,
//       barGroup4,
//       barGroup5,
//       barGroup6,
//       barGroup7,
//     ];
//
//     rawBarGroups = items;
//
//     showingBarGroups = rawBarGroups;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 1,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           Expanded(
//             child: BarChart(
//               BarChartData(
//                 maxY: 20,
//                 barTouchData: BarTouchData(
//                   touchTooltipData: BarTouchTooltipData(
//                     getTooltipColor: (_) => Colors.blueGrey,
//                     tooltipHorizontalAlignment: FLHorizontalAlignment.right,
//                     tooltipMargin: -10,
//                     getTooltipItem: (group, groupIndex, rod, rodIndex) {
//                       String weekDay;
//                       switch (group.x) {
//                         case 0:
//                           weekDay = 'Monday';
//                           break;
//                         case 1:
//                           weekDay = 'Tuesday';
//                           break;
//                         case 2:
//                           weekDay = 'Wednesday';
//                           break;
//                         case 3:
//                           weekDay = 'Thursday';
//                           break;
//                         case 4:
//                           weekDay = 'Friday';
//                           break;
//                         case 5:
//                           weekDay = 'Saturday';
//                           break;
//                         case 6:
//                           weekDay = 'Sunday';
//                           break;
//                         default:
//                           throw Error();
//                       }
//                       return BarTooltipItem(
//                         '$weekDay\n',
//                         const TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                         children: <TextSpan>[
//                           TextSpan(
//                             text: (rod.toY - 1).toString(),
//                             style: context.headlineSmall,
//                           ),
//                         ],
//                       );
//                     },
//                   ),
//                   touchCallback: (FlTouchEvent event, response) {
//                     if (response == null || response.spot == null) {
//                       setState(() {
//                         touchedGroupIndex = -1;
//                         showingBarGroups = List.of(rawBarGroups);
//                       });
//                       return;
//                     }
//
//                     touchedGroupIndex = response.spot!.touchedBarGroupIndex;
//
//                     setState(() {
//                       if (!event.isInterestedForInteractions) {
//                         touchedGroupIndex = -1;
//                         showingBarGroups = List.of(rawBarGroups);
//                         return;
//                       }
//                       showingBarGroups = List.of(rawBarGroups);
//                       if (touchedGroupIndex != -1) {
//                         var sum = 0.0;
//                         for (final rod
//                             in showingBarGroups[touchedGroupIndex].barRods) {
//                           sum += rod.toY;
//                         }
//                         final avg = sum /
//                             showingBarGroups[touchedGroupIndex].barRods.length;
//
//                         showingBarGroups[touchedGroupIndex] =
//                             showingBarGroups[touchedGroupIndex].copyWith(
//                           barRods: showingBarGroups[touchedGroupIndex]
//                               .barRods
//                               .map((rod) {
//                             return rod.copyWith(
//                                 toY: avg, color: widget.avgColor);
//                           }).toList(),
//                         );
//                       }
//                     });
//                   },
//                 ),
//                 titlesData: FlTitlesData(
//                   show: true,
//                   rightTitles: const AxisTitles(
//                     sideTitles: SideTitles(showTitles: false),
//                   ),
//                   topTitles: const AxisTitles(
//                     sideTitles: SideTitles(showTitles: false),
//                   ),
//                   bottomTitles: AxisTitles(
//                     sideTitles: SideTitles(
//                       showTitles: true,
//                       getTitlesWidget: bottomTitles,
//                       reservedSize: 42,
//                     ),
//                   ),
//                   leftTitles: AxisTitles(
//                     sideTitles: SideTitles(
//                       showTitles: true,
//                       reservedSize: 28,
//                       interval: 1,
//                       getTitlesWidget: leftTitles,
//                     ),
//                   ),
//                 ),
//                 borderData: FlBorderData(
//                   show: false,
//                 ),
//                 barGroups: showingBarGroups,
//                 gridData: const FlGridData(show: false),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 12,
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget leftTitles(double value, TitleMeta meta) {
//     const style = TextStyle(
//       color: Color(0xff7589a2),
//       fontWeight: FontWeight.bold,
//       fontSize: 14,
//     );
//     String text;
//     if (value == 0) {
//       text = '1';
//     } else if (value == 5) {
//       text = '5';
//     } else if (value == 10) {
//       text = '10';
//     } else if (value == 15) {
//       text = '15';
//     } else if (value == 20) {
//       text = '20';
//     } else if (value == 25) {
//       text = '25';
//     } else {
//       return Container();
//     }
//     return SideTitleWidget(
//       axisSide: meta.axisSide,
//       space: 0,
//       child: PrimaryRegularText(
//         label: text,
//         fontSize: 12,
//       ),
//     );
//   }
//
//   Widget bottomTitles(double value, TitleMeta meta) {
//     final titles = <String>['Mn', 'Te', 'Wd', 'Tu', 'Fr', 'St', 'Su'];
//
//     final Widget text = PrimaryRegularText(
//       label: titles[value.toInt()],
//       fontSize: 12,
//     );
//
//     return SideTitleWidget(
//       axisSide: meta.axisSide,
//       space: 16, //margin top
//       child: text,
//     );
//   }
//
//   BarChartGroupData makeGroupData(int x, double y1, double y2) {
//     return BarChartGroupData(
//       barsSpace: 4,
//       x: x,
//       barRods: [
//         BarChartRodData(
//           toY: y1,
//           color: widget.leftBarColor,
//           width: width,
//         ),
//         BarChartRodData(
//           toY: y2,
//           color: widget.rightBarColor,
//           width: width,
//         ),
//       ],
//     );
//   }
//
//   Widget makeTransactionsIcon() {
//     const width = 4.5;
//     const space = 3.5;
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         Container(
//           width: width,
//           height: 10,
//           color: Colors.white.withOpacity(0.4),
//         ),
//         const SizedBox(
//           width: space,
//         ),
//         Container(
//           width: width,
//           height: 28,
//           color: Colors.white.withOpacity(0.8),
//         ),
//         const SizedBox(
//           width: space,
//         ),
//         Container(
//           width: width,
//           height: 42,
//           color: Colors.white.withOpacity(1),
//         ),
//         const SizedBox(
//           width: space,
//         ),
//         Container(
//           width: width,
//           height: 28,
//           color: Colors.white.withOpacity(0.8),
//         ),
//         const SizedBox(
//           width: space,
//         ),
//         Container(
//           width: width,
//           height: 10,
//           color: Colors.white.withOpacity(0.4),
//         ),
//       ],
//     );
//   }
// }
