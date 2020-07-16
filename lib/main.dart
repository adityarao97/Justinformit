import 'package:flutter/material.dart';
import './crime.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var crimes = Crime(1, 'category', 'value', 'email', 'phoneNo');
  var arrayOfCrimes = [
    {'id': 1, 'subdomainId': 1, 'value': 'child abuse'},
    {'id': 2, 'subdomainId': 1, 'value': 'child prostitution'},
    {'id': 3, 'subdomainId': 1, 'value': 'child harassment'},
    {'id': 4, 'subdomainId': 1, 'value': 'child exploitation'},
    {'id': 5, 'subdomainId': 2, 'value': 'human trafficking'},
    {'id': 6, 'subdomainId': 2, 'value': 'manual scavenging'},
    {'id': 7, 'subdomainId': 3, 'value': 'prostitution'},
    {'id': 8, 'subdomainId': 4, 'value': 'racial discrimination'}
  ];
  String crimeInput = "";
  var subDomain = 'Crime Subdomain';

  void report() {
    var crimeEntered = arrayOfCrimes.firstWhere(
        (dropdown) => dropdown['value'] == crimeInput.toLowerCase());
    print(crimeEntered);
    setState(() {
      // subDomain = crimeEntered.toString();
      subDomain = crimes.returnCategory();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('justinformit'),
        ),
        body: Column(
          children: [
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(hintText: 'Report a crime here'),
              onChanged: (text) {
                crimeInput = text;
              },
            ),
            RaisedButton(
              child: Text('Report'),
              onPressed: report,
            ),
            Text(subDomain)
          ],
        ),
      ),
    );
  }
}
