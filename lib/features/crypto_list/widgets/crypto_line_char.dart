import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CoinChar extends StatelessWidget {
  final List<double> chartsData;
  const CoinChar({super.key, required this.chartsData});

  @override
  Widget botTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: Color.fromRGBO(226, 226, 234, 1),
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '24 часа назад';
        break;
      case 1:
        text = 'сегодня';
        break;
      case 2:
        text = 'час назад';
        break;
      case 3:
        text = 'сейчас';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  Widget build(BuildContext context) {
    final app_theme = Theme.of(context);
    return LineChart(
      LineChartData(
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(drawBelowEverything: false),
          topTitles: AxisTitles(drawBelowEverything: false),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              interval: 1,
              getTitlesWidget: botTitleWidgets,
            )
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 500,
              reservedSize: 60,
            )
          )
        ),
        gridData: FlGridData(show: false),
        borderData: FlBorderData(
          show: false,
        ),

        lineBarsData: [
          LineChartBarData(
            spots: chartsData
                    .asMap()
                    .entries
                    .map((e) => FlSpot(e.key.toDouble(), e.value))
                    .toList(),
            isCurved: false,
            barWidth: 5,
          ),
        ],
      ),
    );
  }
}