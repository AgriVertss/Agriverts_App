import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';

class CustomLineChart extends StatelessWidget {
  const CustomLineChart(
      {Key? key,
      required this.title,
      this.prefix = '',
      required this.data,
      this.labelPrecision = 3})
      : super(key: key);

  final String title;
  final String prefix;
  final List<double> data;
  final int labelPrecision;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 5,
            ),
            Sparkline(
              data: data,
              gridLineLabelPrecision: 3,
              enableGridLines: true,
              useCubicSmoothing: true,
            ),
          ],
        ),
      ),
    );
  }
}