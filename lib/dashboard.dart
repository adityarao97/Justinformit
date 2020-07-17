import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Dashboard extends StatefulWidget {
  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  Widget build(BuildContext context) {
    return Scaffold(body: _buildStack());
  }

  Widget _buildStack() {
    return Stack(children: <Widget>[
      Container(
          alignment: Alignment(-0.75, -0.85),
          child: Text("Dashboard", style: TextStyle(fontSize: 30))),
      Container(
          height: 400,
          width: 400,
          alignment: Alignment(-0.75, -0.75),
          child: _pieChart()),
      // Container(
      //   alignment: Alignment(-0.5, 0.25),
      //   child: Text(
      //     "hello world",
      //     style: TextStyle(fontSize: 20),
      //   ),
      // ),
      // Container(
      //   alignment: Alignment(0.5, 0.25),
      //   child: Text(
      //     "lorem ipsum",
      //     style: TextStyle(fontSize: 20),
      //   ),
      // ),
    ]);
  }

  Widget _pieChart() {
    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Flutter", () => 5);
    dataMap.putIfAbsent("React", () => 3);
    dataMap.putIfAbsent("Xamarin", () => 2);
    dataMap.putIfAbsent("Ionic", () => 2);

    return PieChart(dataMap: dataMap, chartType: ChartType.ring);
  }
}
