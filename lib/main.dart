import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Report report = Report();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Report'),
              onPressed: () {
                report.setMailId("sumanthmurali48@gmail.com");
                report.setMailSubject("Test 1");
                report.setPhoneNumber("Testing passing the object");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MailSender(
                          mailId: report.getMailId(),
                          mailSubject: report.getMailSubject())),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class MailSender extends StatelessWidget {
  final String mailId;
  final String mailSubject;
  MailSender({@required this.mailId, @required this.mailSubject});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mail"),
        ),
        body: new Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () =>
                      _launchURL(mailId, mailSubject, 'Testing mail sending'),
                  child: new Text('Send mail'),
                ),
                RaisedButton(
                  onPressed: () => _launchCall("919035386608"),
                  child: new Text('Make call'),
                ),
              ]),
        ));
  }

  _launchURL(String toMailId, String subject, String body) async {
    var url = 'mailto:$toMailId?subject=$subject&body=$body';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchCall(String phoneNumber) async {
    var teli = "tel:$phoneNumber";
    if (await canLaunch(teli)) {
      await launch(teli);
    } else {
      throw 'Could not launch $teli';
    }
  }
}
