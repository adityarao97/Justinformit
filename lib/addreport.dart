import 'package:flutter/material.dart';
import './HttpOperations.dart';

class Addreport extends StatefulWidget {
  @override
  AddreportState createState() => AddreportState();
}

class AddreportState extends State<Addreport> {
  Widget _dropdownButton() {
    String dropdownValue = 'One';

    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Addreport")),
        body: Stack(children: <Widget>[
          Container(
            alignment: Alignment(0, -0.8),
            child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter a report'),
              minLines: 5,
              maxLines: 10,
            ),
          ),
          Container(alignment: Alignment(0, 0), child: _dropdownButton()),
          RaisedButton(
            onPressed: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HttpOperations()))
            },
            child: new Text('Do http request'),
          ),
        ]));
  }
}
