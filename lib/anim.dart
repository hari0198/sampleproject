import 'package:flutter/material.dart';


class animation extends StatefulWidget {
  animation({super.key});

  @override
  State<animation> createState() => _animationState();
}
bool selected = false;
class _animationState extends State<animation> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          InkWell(
            // splashColor: Colors.cyanAccent,
            onTap: (){
              setState(() {
                isChecked=!isChecked;
              });


            },
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(width: 5,color: isChecked ? Colors.transparent : Colors.yellow)
              ),

            ),


          ),

        ],
      ),


    );
  }
}