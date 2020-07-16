import 'package:flutter/material.dart';

class Crime {
  int id;
  String category;
  String value;
  String email;
  String phoneNo;

  Crime(this.id, this.category, this.value, this.email, this.phoneNo);

  String returnCategory() {
    return category;
  }

  String returnMail() {
    return email;
  }

  String returnPhone() {
    return phoneNo;
  }

  @override
  Widget build(BuildContext context) {
    return Text(category);
  }
}
