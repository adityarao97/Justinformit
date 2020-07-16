import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pie_chart/pie_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Flutter", () => 5);
    dataMap.putIfAbsent("React", () => 3);
    dataMap.putIfAbsent("Xamarin", () => 2);
    dataMap.putIfAbsent("Ionic", () => 2);
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple[900]),
        home: Scaffold(
            appBar: AppBar(
              title: Text("JustInformit"),
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  semanticLabel: 'back',
                ),
                onPressed: () {
                  print("back pressed");
                },
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.tune,
                    semanticLabel: 'tune',
                  ),
                  onPressed: () {
                    print('Filter button pressed');
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.settings,
                    semanticLabel: 'settings',
                  ),
                  onPressed: () {
                    print('Settings button pressed');
                  },
                ),
              ],
            ),
            body: Stack(children: <Widget>[
              Container(
                  alignment: Alignment(-0.75, -0.85),
                  child: Text("Dashboard", style: TextStyle(fontSize: 30))),
              Container(
                  height: 400,
                  width: 400,
                  alignment: Alignment(-0.75, -0.75),
                  child: PieChart(dataMap: dataMap, chartType: ChartType.ring)),
              Container(
                alignment: Alignment(-0.5, 0.25),
                child: Text(
                  "hello world",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                alignment: Alignment(0.5, 0.25),
                child: Text(
                  "lorem ipsum",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ])));
  }
}
