import 'package:flutter/material.dart';
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
