import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import './HttpResponse.dart';

Future<User> fetchUsersFromGitHub() async {
  var queryParameters = {
    'id': "2",
    'response': "hello",
  };
  var uri = Uri.https('h86il5tzc2.execute-api.us-east-1.amazonaws.com',
      '/test/', queryParameters);

  final response = await http.get(uri);

  if (response.statusCode == 200) {
    return User.fromJson(json.decode(response.body));
  } else {
    throw Exception("failed to load request");
  }
}
