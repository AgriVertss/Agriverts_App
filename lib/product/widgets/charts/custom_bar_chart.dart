import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomBarChart extends StatelessWidget {
  const CustomBarChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BarChart(
            BarChartData(
              alignment: BarChartAlignment.center,
              barTouchData: BarTouchData(
                enabled: false,
              ),
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 20,
                    getTitlesWidget: bottomTitles,
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
              ),
              gridData: FlGridData(
                show: false,
                drawVerticalLine: false,
              ),
              borderData: FlBorderData(
                show: false,
              ),
              groupsSpace: 5,
              barGroups: getData(),
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(color: Color(0xff939393), fontSize: 10);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Apr';
        break;
      case 1:
        text = 'May';
        break;
      case 2:
        text = 'Jun';
        break;
      case 3:
        text = 'Jul';
        break;
      case 4:
        text = 'Aug';
        break;
      default:
        text = '';
        break;
    }
    return Center(child: Text(text, style: style));
  }

  Widget leftTitles(double value, TitleMeta meta) {
    if (value == meta.max) {
      return Container();
    }
    const style = TextStyle(
      color: Color(
        0xff939393,
      ),
      fontSize: 10,
    );
    return Padding(
      child: Text(meta.formattedValue, style: style),
      padding: const EdgeInsets.only(left: 8),
    );
  }

  List<BarChartGroupData> getData() {
    return [
      BarChartGroupData(
        x: 0,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              toY: 17000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 2000000000, Colors.red),
                BarChartRodStackItem(2000000000, 12000000000, Colors.red),
                BarChartRodStackItem(12000000000, 17000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 24000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 13000000000, Colors.red),
                BarChartRodStackItem(13000000000, 14000000000, Colors.red),
                BarChartRodStackItem(14000000000, 24000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 24000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 13000000000, Colors.red),
                BarChartRodStackItem(13000000000, 14000000000, Colors.red),
                BarChartRodStackItem(14000000000, 24000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 24000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 13000000000, Colors.red),
                BarChartRodStackItem(13000000000, 14000000000, Colors.red),
                BarChartRodStackItem(14000000000, 24000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 24000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 13000000000, Colors.red),
                BarChartRodStackItem(13000000000, 14000000000, Colors.red),
                BarChartRodStackItem(14000000000, 24000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 24000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 13000000000, Colors.red),
                BarChartRodStackItem(13000000000, 14000000000, Colors.red),
                BarChartRodStackItem(14000000000, 24000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 24000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 13000000000, Colors.red),
                BarChartRodStackItem(13000000000, 14000000000, Colors.red),
                BarChartRodStackItem(14000000000, 24000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 24000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 13000000000, Colors.red),
                BarChartRodStackItem(13000000000, 14000000000, Colors.red),
                BarChartRodStackItem(14000000000, 24000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 23000000000.5,
              rodStackItems: [
                BarChartRodStackItem(0, 6000000000.5, Colors.red),
                BarChartRodStackItem(6000000000.5, 18000000000, Colors.red),
                BarChartRodStackItem(18000000000, 23000000000.5, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 29000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 9000000000, Colors.red),
                BarChartRodStackItem(9000000000, 15000000000, Colors.red),
                BarChartRodStackItem(15000000000, 29000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 32000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 2000000000.5, Colors.red),
                BarChartRodStackItem(2000000000.5, 17000000000.5, Colors.red),
                BarChartRodStackItem(17000000000.5, 32000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              toY: 31000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 11000000000, Colors.red),
                BarChartRodStackItem(11000000000, 18000000000, Colors.red),
                BarChartRodStackItem(18000000000, 31000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 35000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 14000000000, Colors.red),
                BarChartRodStackItem(14000000000, 27000000000, Colors.red),
                BarChartRodStackItem(27000000000, 35000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 31000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 8000000000, Colors.red),
                BarChartRodStackItem(8000000000, 24000000000, Colors.red),
                BarChartRodStackItem(24000000000, 31000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 15000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 6000000000.5, Colors.red),
                BarChartRodStackItem(6000000000.5, 12000000000.5, Colors.red),
                BarChartRodStackItem(12000000000.5, 15000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 17000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 9000000000, Colors.red),
                BarChartRodStackItem(9000000000, 15000000000, Colors.red),
                BarChartRodStackItem(15000000000, 17000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              toY: 34000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 6000000000, Colors.red),
                BarChartRodStackItem(6000000000, 23000000000, Colors.red),
                BarChartRodStackItem(23000000000, 34000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 32000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 7000000000, Colors.red),
                BarChartRodStackItem(7000000000, 24000000000, Colors.red),
                BarChartRodStackItem(24000000000, 32000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 14000000000.5,
              rodStackItems: [
                BarChartRodStackItem(0, 1000000000.5, Colors.red),
                BarChartRodStackItem(1000000000.5, 12000000000, Colors.red),
                BarChartRodStackItem(12000000000, 14000000000.5, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 20000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 4000000000, Colors.red),
                BarChartRodStackItem(4000000000, 15000000000, Colors.red),
                BarChartRodStackItem(15000000000, 20000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 24000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 4000000000, Colors.red),
                BarChartRodStackItem(4000000000, 15000000000, Colors.red),
                BarChartRodStackItem(15000000000, 24000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              toY: 14000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 1000000000.5, Colors.red),
                BarChartRodStackItem(1000000000.5, 12000000000, Colors.red),
                BarChartRodStackItem(12000000000, 14000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 27000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 7000000000, Colors.red),
                BarChartRodStackItem(7000000000, 25000000000, Colors.red),
                BarChartRodStackItem(25000000000, 27000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 29000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 6000000000, Colors.red),
                BarChartRodStackItem(6000000000, 23000000000, Colors.red),
                BarChartRodStackItem(23000000000, 29000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 16000000000.5,
              rodStackItems: [
                BarChartRodStackItem(0, 9000000000, Colors.red),
                BarChartRodStackItem(9000000000, 15000000000, Colors.red),
                BarChartRodStackItem(15000000000, 16000000000.5, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
          BarChartRodData(
              toY: 15000000000,
              rodStackItems: [
                BarChartRodStackItem(0, 7000000000, Colors.red),
                BarChartRodStackItem(7000000000, 12000000000.5, Colors.red),
                BarChartRodStackItem(12000000000.5, 15000000000, Colors.red),
              ],
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
      ),
    ];
  }
}
