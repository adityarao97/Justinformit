import 'package:flutter/material.dart';
import './mailSender.dart';
import './HttpOperations.dart';
import './HttpResponse.dart';

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

class Addreport extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddreportState();
  }
}

class AddreportState extends State<Addreport> {
  String crimeInput = "";
  String category = 'Crime Category';
  Report reporting = Report();

  void report() {
    Future<User> user = fetchUsersFromGitHub();
    setState(() {
      category = crimeInput;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Justinformit'),
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
            Text(category),
            Builder(
                builder: (context) => RaisedButton(
                    child: Text('Report now'),
                    onPressed: () {
                      reporting.setMailId("test@gmail.com");
                      reporting.setMailSubject("Test 1");
                      reporting.setPhoneNumber("Testing passing the object");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MailSender(
                                mailId: reporting.getMailId(),
                                mailSubject: reporting.getMailSubject(),
                                phoneNumber: reporting.getPhoneNumber())),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
