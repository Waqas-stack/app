import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:styling/model/transectiion.dart';

class TransectionList extends StatelessWidget {
final List<Transection> transection;
TransectionList(this.transection);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: transection.map((ctx) {
          return Card(
            child: Row(
              children: [
                Container(
                  child: Text(
                    '\$${ctx.amount}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color:Colors.purple,
                    ),
                  ),
                  margin:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2),
                  ),
                  padding: EdgeInsets.all(10),
                ),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text(
                      ctx.title,
                      style:TextStyle(
                        fontWeight:FontWeight.bold,
                        fontSize:16,
                      ),
                    ),
                    Text(
                      DateFormat.yMMMMd().format(ctx.date),
                      style:TextStyle(
                        color:Colors.green,
                      ),

                    ),
                  ],
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
