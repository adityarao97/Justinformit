import 'package:flutter/material.dart';
import './homepage.dart';

class Startpage extends StatefulWidget {
  @override
  StartpageState createState() => StartpageState();
}

class StartpageState extends State<Startpage> {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Stack(children: <Widget>[
        Center(
            child: Text('JustInformit',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold))),
        Container(
          alignment: Alignment(0, 0.4),
          child: Text("Seen or experienced injustice of any form? JustInform",
              style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.center),
        ),
        Container(
            alignment: Alignment(0, 0.6),
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return Homepage();
                }));
              },
              child: const Text("START", style: TextStyle(color: Colors.white)),
              color: Colors.black,
            ))
      ]),
      backgroundColor: Colors.blue,
    ));
  }
}
