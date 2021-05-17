import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTransection extends StatelessWidget {
  final Function addtx;
  final titlecontrollar=TextEditingController();
  final amountcontrollar=TextEditingController();
  NewTransection(this.addtx);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation:5,
      child:Container(
        padding:EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.end,
          children: [
            TextField(
              decoration:InputDecoration(
                  labelText:'Title'
              ),
              // onChanged:(val){
              //   titleinput=val;
              // },
              controller:titlecontrollar,
            ),
            TextField(
              decoration:InputDecoration(
                  labelText:'Amount'
              ),
              // onChanged:(val){
              //   amountinput=val;
              // },
              controller:amountcontrollar,
            ),
            FlatButton(onPressed:(){
              addtx(titlecontrollar.text,double.parse(amountcontrollar.text));

            }, child: Text('Add transection'),
              textColor:Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
