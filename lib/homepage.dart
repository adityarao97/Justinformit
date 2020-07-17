import 'package:flutter/material.dart';
import 'package:justInformIt/dashboard.dart';
import './addreport.dart';

class Homepage extends StatefulWidget {
  @override
  HomepageState createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.pie_chart_outlined)),
              ],
            ),
            title: Text('JustInformit'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.home),
              Dashboard(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Addreport(),
                    ));
              }),
        ),
      ),
    );
  }

  void addReport() {}
}
