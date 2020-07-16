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
            body: Align(
                alignment: Alignment(-0.75, -0.75),
                child: Text("Dashboard", style: TextStyle(fontSize: 30))),
                Align(alignment: Alignment(-0.5, -0.5),
                child: )));
  }
}
