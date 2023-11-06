import 'package:flutter/material.dart';

class Samplee extends StatelessWidget {
  const Samplee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Center(child: Text("sample app")),
        leading: Icon(Icons.menu),
        actions: [Padding(padding: EdgeInsets.all(10.0),child: Icon(Icons.search),
        ),
          Padding(padding: EdgeInsets.all(8.0),child: Icon(Icons.account_circle_rounded),),
        Padding(padding: EdgeInsets.all(9.0),child: Icon(Icons.email),),
        Padding(padding: EdgeInsets.all(9.0),child: Icon(Icons.phone),),




    ],

      ),
    body: Column(children: [
      Padding(padding: EdgeInsets.all(8.0),child: TextFormField(),),
      Padding(padding: EdgeInsets.all(8.0),child: TextFormField(),),
      SizedBox(height:40,),
      ElevatedButton(onPressed: () {}, child: Text("login")),
      SizedBox(height:40),


      Container(
        height: 150, width: 150, child:Image.asset("assets/img/hari.png"),

      ),
    ],
    ),
    );
  }
}


