import 'package:flutter/material.dart';
class ink extends StatefulWidget {
  const ink({super.key});

  @override
  State<ink> createState() => _inkState();
}

class _inkState extends State<ink> {
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              height: 300,
              width: 300,
              child: InkWell(
                // child: Container(
                //   height: 300,
                //   width: 300,
                //   color: Colors.cyanAccent,
                // ),

                    onTap: (){
                      setState(() {
                        color = Colors.red;
                      });
                    },
                child: Ink(
                  height: 300,
                  width: 300,
                  color: color,
                  child: const Center(
                    child: Text("data"),
                  ),

                ),

              ),
            ),


          ),
        ],
      ),
    );
  }
}
