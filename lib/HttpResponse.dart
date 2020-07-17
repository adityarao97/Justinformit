class User {
  String response;
  String id;
  String persecutor;
  User(this.id, this.response, this.persecutor);

  factory User.fromJson(dynamic json) {
    return User(json['id'] as String, json['response'] as String,
        json["persecutor"] as String);
  }
}
