import 'package:flutter/material.dart';
import 'package:justInformIt/dashboard.dart';
import './addreport.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Homepage extends StatefulWidget {
  @override
  HomepageState createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  Widget _buildListItem(BuildContext context, DocumentSnapshot document) {
    return ListTile(
      title: Row(children: [
        IconButton(icon: Icon(Icons.folder), onPressed: null),
        Expanded(
          child: Text(document['crime'], style: TextStyle(fontSize: 20)),
        ),
        Container(
          child: Text(
            document['severity'],
            style: TextStyle(fontSize: 20),
          ),
        )
      ]),
    );
  }

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
              StreamBuilder(
                  stream: Firestore.instance.collection('reports1').snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) return Text("Loading...");
                    return ListView.builder(
                        itemExtent: 80,
                        itemCount: snapshot.data.documents.length,
                        itemBuilder: (context, index) => _buildListItem(
                            context, snapshot.data.documents[index]));
                  }),
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
}
