import 'package:flutter/material.dart';
import './addreport.dart';

class Homepage extends StatefulWidget {
  @override
  HomepageState createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.grid_on)),
                Tab(icon: Icon(Icons.chat)),
              ],
            ),
            title: Text('JustInformit'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.home),
              Icon(Icons.grid_on),
              Icon(Icons.chat),
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
