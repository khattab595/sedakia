import 'package:app/core/utils/date_formatter.dart';
import 'package:app/core/widgets/texts/primary_texts.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../main_index.dart';
 import '../../data/models/monthly_dto.dart';

class ChartsStatistics extends StatefulWidget {
  final List<MonthlyDto> monthlyDto;
  ChartsStatistics({super.key, required this.monthlyDto});

  @override
  State<ChartsStatistics> createState() => _ChartsStatisticsState();
}

class _ChartsStatisticsState extends State<ChartsStatistics> {
  List<Color> gradientColors = [
    AppColors.backgroundColor,
    AppColors.greenColor,
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: LineChart(
        mainData(),
      ),
    );
  }
  final months = DateFormatter.getAllMonthsTransactions();
  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final titles = months;
    final Widget text = PrimaryRegularText(
      label: titles[value.toInt()].substring(0, 3),
      fontSize: 12,
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16, //margin top
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 14,
    );
    String text;
    if (value == 1) {
      text = '1';
    } else if (value == 5) {
      text = '5';
    } else if (value == 10) {
      text = '10';
    } else if (value == 15) {
      text = '15';
    } else if (value == 20) {
      text = '20';
    } else if (value == 25) {
      text = '25';
    } else {
      return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: context.primaryColor,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: context.errorColor,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 20,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 20,
      lineBarsData: [
        LineChartBarData(
          spots: widget.monthlyDto
              .map(
                (e) => FlSpot(
                  DateFormatter.getMonthIndex(e.month ?? '').toDouble(),
                  e.totalOrders?.toDouble() ?? 0,
                ),
              )
              .toList(),
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 10,
          isStrokeCapRound: true,
          // dotData: const FlDotData(
          //   show: false,
          // ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}