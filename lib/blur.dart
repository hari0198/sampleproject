import 'dart:ui';

import 'package:flutter/material.dart';
class blur extends StatelessWidget {
  const blur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/img/bg3.jpeg"),fit: BoxFit.fill,
          ), //bgimage
        ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
            child: Column(
              children: [ClipRRect(
            borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(filter: ImageFilter.blur(sigmaY: 10,sigmaX: 10),
                child: Container(

                  width: 300,
                  height: 140,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.2),

                  ),
                  child: Column(
                    children: [
                      Center(child: Text("5.20 PM",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
                      ),

                      TextButton.icon(onPressed: () {Navigator.pushNamed(context, '/Location');

                      }, icon: Icon(Icons.edit_location), label: Text('Location'),),















                    ],




                  ),



                ),),


            )











              ],
            ),









        ),


          ),













    );
  }
}
