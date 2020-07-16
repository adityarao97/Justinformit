import 'package:flutter/material.dart';
import './crime.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
<<<<<<< HEAD
=======
    // TODO: implement createState
>>>>>>> 2d2c8ae89bf87a8e744b267f53afc55ad1d99635
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
<<<<<<< HEAD
      // subDomain = crimeEntered.toString();
      subDomain = crimes.returnCategory();
=======
<<<<<<< HEAD
      // subDomain = crimeEntered.toString();
      subDomain = crimes.returnCategory();
=======
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter = _counter + 3;
>>>>>>> 1f1655764ab7c3113b18e71d318f043253f07e70
>>>>>>> 2d2c8ae89bf87a8e744b267f53afc55ad1d99635
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
