import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart'; // Import fl_chart for Pie Chart

class ChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monthly Expenses - Chart'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Expenses Breakdown',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            PieChart(
              PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 40,
                sections: showingSections(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Create data for the Pie Chart
  List<PieChartSectionData> showingSections() {
    return [
      PieChartSectionData(
        value: 120,
        title: 'Food',
        color: Colors.blue,
        radius: 50,
      ),
      PieChartSectionData(
        value: 75,
        title: 'Transportation',
        color: Colors.green,
        radius: 50,
      ),
      PieChartSectionData(
        value: 50,
        title: 'Entertainment',
        color: Colors.orange,
        radius: 50,
      ),
      // Add more sections as needed
    ];
  }
}
