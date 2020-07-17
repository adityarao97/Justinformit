import 'package:flutter/material.dart';
import 'package:justInformIt/addreport.dart';
import './crime.dart';
import './mailSender.dart';
import './addreport.dart';

void main() => runApp(MyApp());

class Report {
  String mailId;
  String mailSubject;
  String phoneNumber;

  void setMailId(String mailId) {
    this.mailId = mailId;
  }

  void setMailSubject(String mailSubject) {
    this.mailSubject = mailSubject;
  }

  void setPhoneNumber(String phoneNumber) {
    this.phoneNumber = phoneNumber;
  }

  String getMailId() {
    return this.mailId;
  }

  String getMailSubject() {
    return this.mailSubject;
  }

  String getPhoneNumber() {
    return this.phoneNumber;
  }
}

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return Addreport();
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple[900]), home: Addreport());
  }
}

// class MyAppState extends State<MyApp> {
//   var crimes = Crime(1, 'category', 'value', 'email', 'phoneNo');
//   var arrayOfCrimes = [
//     {'id': 1, 'subdomainId': 1, 'value': 'child abuse'},
//     {'id': 2, 'subdomainId': 1, 'value': 'child prostitution'},
//     {'id': 3, 'subdomainId': 1, 'value': 'child harassment'},
//     {'id': 4, 'subdomainId': 1, 'value': 'child exploitation'},
//     {'id': 5, 'subdomainId': 2, 'value': 'human trafficking'},
//     {'id': 6, 'subdomainId': 2, 'value': 'manual scavenging'},
//     {'id': 7, 'subdomainId': 3, 'value': 'prostitution'},
//     {'id': 8, 'subdomainId': 4, 'value': 'racial discrimination'}
//   ];
//   String crimeInput = "";
//   var subDomain = 'Crime Subdomain';

//   void report() {
//     var crimeEntered = arrayOfCrimes.firstWhere(
//         (dropdown) => dropdown['value'] == crimeInput.toLowerCase());
//     print(crimeEntered);
//     setState(() {
//       subDomain = crimes.returnCategory();
//     });
//   }

//   Report reporting = Report();
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('justinformit'),
//         ),
//         body: Column(
//           children: [
//             TextField(
//               textAlign: TextAlign.center,
//               decoration: InputDecoration(hintText: 'Report a crime here'),
//               onChanged: (text) {
//                 crimeInput = text;
//               },
//             ),
//             RaisedButton(
//               child: Text('Report'),
//               onPressed: report,
//             ),
//             Text(subDomain),
//             Builder(
//                 builder: (context) => RaisedButton(
//                     child: Text('Report now'),
//                     onPressed: () {
//                       reporting.setMailId("test@gmail.com");
//                       reporting.setMailSubject("Test 1");
//                       reporting.setPhoneNumber("Testing passing the object");
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => MailSender(
//                                 mailId: reporting.getMailId(),
//                                 mailSubject: reporting.getMailSubject(),
//                                 phoneNumber: reporting.getPhoneNumber())),
//                       );
//                     })),
//           ],
//         ),
//       ),
//     );
//   }
// }
