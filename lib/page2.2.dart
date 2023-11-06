import 'package:flutter/material.dart';
import 'package:untitled/page1.dart';
import 'package:untitled/page2.1.dart';
import 'package:untitled/page2.dart';
class page4 extends StatelessWidget {
  const page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading:Container (
          child: GestureDetector(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const page2()),

              );
            },

            child: Icon(Icons.arrow_back_ios_new,size:40,),
        ) ,


        ),


        title: Center(child: Text("Reports")),
        actions: [

          Container (
            child: GestureDetector(
              onTap: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const page1()),

                );
              },

              child: Icon(Icons.close,size:40,),
            ) ,


          ),

        ],
      ),


      body:
      Column  (
        children: [  SizedBox(height: 50,),
          Row(
            children: [
              Text("Reports",style: TextStyle(fontSize: 30,color: Colors.black),),
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(decoration: BoxDecoration(border: Border.all()),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Center(child: Text("Report1",style: TextStyle(fontSize: 20,color: Colors.black),)),
                trailing: Icon(Icons.arrow_forward_ios),tileColor: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(decoration: BoxDecoration(border: Border.all()),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Center(child: Text("Report2",style: TextStyle(fontSize: 20,color: Colors.black),)),
                trailing: Icon(Icons.arrow_forward_ios),tileColor: Colors.grey,    ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(right: 250.0),
            child: Text("help",style: TextStyle(fontSize: 20,
                decoration: TextDecoration.underline,decorationStyle:TextDecorationStyle.dotted),),
          ),

          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(decoration: BoxDecoration(border: Border.all()),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Center(child: Text("Log",style: TextStyle(fontSize: 20),)),
                trailing: Icon(Icons.arrow_forward_ios),tileColor: Colors.grey,    ),
            ),
          ),

        ],

      ),

    );
  }
}
