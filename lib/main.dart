import 'package:flutter/material.dart';
import './dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // void _goToDashboard() {
  //   Navigator.of(context)
  //       .push(MaterialPageRoute(builder: (BuildContext context) {
  //     return Dashboard();
  //   }));
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple[900]), home: Dashboard());
    // home: Scaffold(
    //   appBar: AppBar(
    //     title: Text("JustInformit"),
    //   ),
    //   body: RaisedButton(
    //     child: Text("go to dashboard"),
    //     onPressed: _goToDashboard,
    //   ),
    // ));
  }
}
