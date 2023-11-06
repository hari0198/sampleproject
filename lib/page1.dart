import 'package:flutter/material.dart';
import 'package:untitled/page2.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [SizedBox(height: 150,),
              TextFormField(
          decoration: InputDecoration(
          icon: Icon(Icons.person),
          hintText: 'enter name',
          border: OutlineInputBorder(),
    ),
    ),

          SizedBox(height: 30,),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.key),
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 25),
              ElevatedButton(onPressed: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const page2()),
                );
              },

                  child: Text("login",style: TextStyle(color: Colors.black,fontSize: 30,),),
                style: ElevatedButton.styleFrom(shape: CircleBorder(),
                  backgroundColor: Colors.grey,
                  padding: EdgeInsets.all(30),),
              ),

            ],

          ),
        ),
      ),
    );
  }
}
