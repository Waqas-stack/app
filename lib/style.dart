import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:styling/widegtes/user_transection.dart';

class Style extends StatelessWidget {
  // String titleinput;
  // String amountinput;
  final titlecontrollar=TextEditingController();
  final amountcontrollar=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("styling of app"),
      ),
      body: Column(
        //mainAxisAlignment:MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text("card"),
            ),
          ),
          UserTransection(),

        ],
      ),
    );
  }
}
