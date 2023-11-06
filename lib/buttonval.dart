import 'dart:math';

import 'package:flutter/material.dart';
class value1 extends StatefulWidget {

  @override
  State<value1> createState() => _value1State();
}

class _value1State extends State<value1> {
  String displaytext ="";
  var string =['1'];

  void changetext(){
    setState(() {
      displaytext=string[Random().nextInt(string.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 35,
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),


                child: Text(displaytext,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,), textAlign: TextAlign.right)),
             SizedBox(height: 30,),
             ElevatedButton(onPressed: (){
               changetext();



             }, child: Text("1",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
                primary: Colors.black54),
             ),

          SizedBox(height: 25,),
        Container(
          height: 300,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(),
          ),
        ),

          ],
          ),
      ),

    );
  }
}
