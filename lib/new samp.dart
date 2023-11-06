import 'package:flutter/material.dart';
class hari extends StatelessWidget {
  const hari({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("test"),
        leading: Icon(Icons.menu),
        actions: [
          Padding(padding: EdgeInsets.all(10.0),child: Icon(Icons.contact_emergency),),
           Padding(padding: EdgeInsets.all(8.0),child: Icon(Icons.add),),
          Padding(padding: EdgeInsets.all(8.0),child: Icon(Icons.access_alarms_sharp),),
      ],
    ),
      body: Column(children: [
        Padding(padding: EdgeInsets.all(8.0),child: TextFormField(),),
        Padding(padding: EdgeInsets.all(8.0),child: TextFormField(),),
        SizedBox(height: 50,),
        ElevatedButton(onPressed: (){}, child: Text("login")),

        Container(
          height: 500,
          width: 500,
          child: Image.asset("assets/img/kick.jpg"),
        ),

      ],),
    );

  }
}
