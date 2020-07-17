import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MailSender extends StatelessWidget {
  final String mailId;
  final String mailSubject;
  final String phoneNumber;
  MailSender(
      {@required this.mailId,
      @required this.mailSubject,
      @required this.phoneNumber});
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
                  onPressed: () => _launchCall("123456789"),
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
    String masker = "*31*";
    var teli = "tel:$masker$phoneNumber";
    if (await canLaunch(teli)) {
      await launch(teli);
    } else {
      throw 'Could not launch $teli';
    }
  }
}
