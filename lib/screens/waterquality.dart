import 'package:aquariumapp/data/SalesData.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WaterQualityScreen extends StatefulWidget {
  const WaterQualityScreen({Key? key});

  @override
  State<WaterQualityScreen> createState() => _WaterQualityScreenState();
}

class _WaterQualityScreenState extends State<WaterQualityScreen> {
  double currentTurbidity = 30.0;

  String _getTurbidityStatus(double turbidity) {
    if (turbidity <= 30) {
      return 'Water is clear';
    } else if (turbidity > 30 && turbidity <= 60) {
      return 'Water is slightly cloudy';
    } else {
      return 'Water is very cloudy';
    }
  }

  Color _getColorBasedOnTurbidity(double turbidity) {
    if (turbidity <= 30) {
      return Colors.green;
    } else if (turbidity > 30 && turbidity <= 60) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quality of Water'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(
              "images/itenas.png",
              fit: BoxFit.cover,
              scale: 50,
            ),
          ),
        ],
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue[400],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 230, right: 200),
                    decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 160),
                    child: Text(
                      'Status:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 55, left: 130),
                    child: Container(
                      width: 120,
                      height: 120,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          CircularProgressIndicator(
                            value: currentTurbidity / 100.0,
                            strokeWidth: 10,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              _getColorBasedOnTurbidity(currentTurbidity),
                            ),
                            backgroundColor: Colors.white,
                          ),
                          Center(
                            child: Text(
                              '${currentTurbidity.toStringAsFixed(1)} NTU',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 190, left: 130),
                    child: Text(
                      _getTurbidityStatus(currentTurbidity),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Container(
                child: SfCartesianChart(
                  title: ChartTitle(text: 'Weekly'),
                  legend:
                      Legend(isVisible: true, position: LegendPosition.bottom),
                  // Initialize category axis
                  primaryXAxis: CategoryAxis(),

                  series: <LineSeries<SalesData, String>>[
                    LineSeries<SalesData, String>(
                      name: 'Water Quality',
                      // Bind data source
                      dataSource: <SalesData>[
                        SalesData('Sun', 23),
                        SalesData('Mon', 22),
                        SalesData('Tue', 25),
                        SalesData('Wed', 26),
                        SalesData('Thu', 20),
                        SalesData('Fri', 23),
                        SalesData('Sat', 22),
                      ],
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales,
                      dataLabelSettings: DataLabelSettings(isVisible: true),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                child: SfCartesianChart(
                  title: ChartTitle(text: 'Monthly'),
                  legend:
                      Legend(isVisible: true, position: LegendPosition.bottom),
                  // Initialize category axis
                  primaryXAxis: CategoryAxis(),

                  series: <LineSeries<SalesData, String>>[
                    LineSeries<SalesData, String>(
                      name: 'Water Quality',
                      // Bind data source
                      dataSource: <SalesData>[
                        SalesData('Jan', 23),
                        SalesData('Feb', 22),
                        SalesData('Mar', 25),
                        SalesData('Apr', 26),
                        SalesData('May', 20),
                        SalesData('June', 23),
                        SalesData('July', 22),
                        SalesData('Aug', 25),
                        SalesData('Sept', 26),
                        SalesData('Oct', 20),
                        SalesData('Nov', 23),
                        SalesData('Des', 22),
                      ],
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales,
                      dataLabelSettings: DataLabelSettings(isVisible: true),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                child: SfCartesianChart(
                  title: ChartTitle(text: 'Yearly'),
                  legend:
                      Legend(isVisible: true, position: LegendPosition.bottom),
                  // Initialize category axis
                  primaryXAxis: CategoryAxis(),

                  series: <LineSeries<SalesData, String>>[
                    LineSeries<SalesData, String>(
                      name: 'Water Quality',
                      // Bind data source
                      dataSource: <SalesData>[
                        SalesData('2020', 23),
                        SalesData('2021', 22),
                        SalesData('2022', 25),
                        SalesData('2023', 26),
                        SalesData('2024', 20),
                      ],
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales,
                      dataLabelSettings: DataLabelSettings(isVisible: true),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
