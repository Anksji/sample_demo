import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 1,
        minY: 0,
        maxX: 7,
        maxY: 16,
        lineBarsData: lineChartBarData,
      ),
    );
  }

  List<LineChartBarData> lineChartBarData = [
    LineChartBarData(
        color: Colors.white,
        isCurved: true,
        spots: [
          FlSpot(1, 8),
          FlSpot(4, 4),
          FlSpot(5, 8),
          FlSpot(6, 8.6),
          FlSpot(7, 10)
        ]
    )
  ];

}