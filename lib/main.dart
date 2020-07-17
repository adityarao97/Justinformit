import 'package:flutter/material.dart';
import './dashboard.dart';
import './homepage.dart';
import './addreport.dart';
import './HttpResponse.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple[900]), home: Homepage());
  }
}
