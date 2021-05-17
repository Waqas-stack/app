import 'package:flutter/cupertino.dart';

class Transection {
  String id;
  String title;
  double amount;
  DateTime date;
  Transection(
      {@required this.title,
      @required this.amount,
      @required this.date,
      @required this.id});
}
