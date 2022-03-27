import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class CustomPieChart extends StatelessWidget {
  const CustomPieChart({
    Key? key,
    required this.screenSize,
    required this.hasatData,
    required this.title,
    required this.colorList,
  }) : super(key: key);

  final Size screenSize;
  final Map<String, double> hasatData;
  final String title;
  final List<Color> colorList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: screenSize.width / 2.2,
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: PieChart(
                initialAngleInDegree: 270,
                colorList: colorList,
                chartLegendSpacing: 20,
                legendOptions: LegendOptions(
                  legendPosition: LegendPosition.bottom,
                ),
                dataMap: hasatData,
                chartType: ChartType.ring,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void updatePieChartData(
      {required Map<String, double> data,
      required double data1,
      required double data2}) {
    data.update(data.keys.first, (_) => data1);
    data.update(data.keys.last, (_) => data2);
  }
}
