class User {
  String response;
  String id;
  String persecutor;
  User({this.id, this.response, this.persecutor});

  factory User.fromJson(dynamic json) {
    return User(
        id: json['id'],
        response: json['response'],
        persecutor: json["persecutor"]);
  }
}
