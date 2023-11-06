import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class task extends StatefulWidget {
  const task({super.key});

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  final ctrl1 =TextEditingController();
  final ctrl2 =TextEditingController();

  String num1="",num2="";
  String optr= "";
  bool clk = false;
  List<int> l = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(),),

            controller: ctrl1,style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold),
            keyboardType: TextInputType.none,)











        ],





      ),







    );
  }
}
