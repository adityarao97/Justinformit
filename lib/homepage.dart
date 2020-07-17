import 'package:flutter/material.dart';
import './addreport.dart';

class Homepage extends StatefulWidget {
  @override
  HomepageState createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  Widget _buildListItem(BuildContext context) {}

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
            ListView.builder(
                itemBuilder: (context, index) => _buildListItem(context)),
            Icon(Icons.grid_on),
            Icon(Icons.chat),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return Addreport();
            }));
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
        ),
      ),
    ));
  }
}
