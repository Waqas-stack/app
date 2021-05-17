import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:styling/model/transectiion.dart';
import 'package:styling/widegtes/transection_list.dart';
import 'new_transection.dart';

class UserTransection extends StatefulWidget {
  @override
  _UserTransectionState createState() => _UserTransectionState();
}

class _UserTransectionState extends State<UserTransection> {
  final List<Transection> _usertransection = [
    Transection(
        title: 'New shoes', amount: 99.09, date: DateTime.now(), id: 't1'),
    Transection(
        title: 'Weekly grociers ',
        amount: 19.99,
        date: DateTime.now(),
        id: 't2'),
  ];
  void _addnewtransection(String txtitle, double txamount) {
    final newTx = Transection(
      title: txtitle,
      amount: txamount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _usertransection.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransection(_addnewtransection),
        TransectionList(_usertransection),
      ],
    );
  }
}
