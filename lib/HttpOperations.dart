import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import './HttpResponse.dart';

Future<User> fetchUsersFromGitHub() async {
  var queryParameters = {
    'id': '2',
    'response': 'hello',
  };
  var uri = Uri.https('h86il5tzc2.execute-api.us-east-1.amazonaws.com',
      '/test/', queryParameters);

  final response = await http.get(uri);
  print(response.body);
  Map<String, dynamic> map = json.decode(response.body);
  // List<dynamic> data = map[""];
  print(map);
  // User user = User.fromJson(jsonDecode(responseJson));
  User user = new User(map["body"]["id"].toString(),
      map["body"]["response"].toString(), map["body"]["persecutor"].toString());
  print(user);
  return user;
}

// class HttpOperationsState extends State<HttpOperations> {
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Categories',
//       theme: new ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: new Scaffold(
//         appBar: new AppBar(
//           title: new Text('Categories'),
//         ),
//         body: new Container(
//           child: new FutureBuilder<User>(
//             future: fetchUsersFromGitHub(),
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return new ListView.builder(itemBuilder: (context, index) {
//                   return new Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         new Text(snapshot.data.response,
//                             style: new TextStyle(fontWeight: FontWeight.bold)),
//                         new Divider()
//                       ]);
//                 });
//               } else if (snapshot.hasError) {
//                 print("${snapshot.error}");
//                 return new Text("${snapshot.error}");
//               }

//               // By default, show a loading spinner
//               return new CircularProgressIndicator();
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
