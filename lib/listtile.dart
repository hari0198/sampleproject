import 'package:flutter/material.dart';
class listtile extends StatelessWidget {
  const listtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
              backgroundColor: Colors.blueGrey,
              leading: Icon(Icons.menu,size: 50,),
              title: Center(child: Text("Reports")),
              actions: [
                Icon(Icons.close,size: 50,),

            ],
              
            ),
      body:
      Column  (
         children: [  SizedBox(height: 50,),
          Center(child: Text("All Reports",style: TextStyle(fontSize: 30,color: Colors.black),)
          ),
               SizedBox(height: 20,), 
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(decoration: BoxDecoration(border: Border.all()),
                   child: ListTile(
                   leading: Icon(Icons.person),
                   title: Center(child: Text("Report1",style: TextStyle(fontSize: 20,color: Colors.black),)),
                   trailing: Icon(Icons.menu),tileColor: Colors.grey,
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
                    trailing: Icon(Icons.menu),tileColor: Colors.grey,    ),
                  ),
                ),

                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(decoration: BoxDecoration(border: Border.all()),   
                    child: ListTile(
                    leading: Icon(Icons.person),
                    title: Center(child: Text("Report3",style: TextStyle(fontSize: 20),)),
                    trailing: Icon(Icons.menu),tileColor: Colors.grey,    ),
                  ),
                ),

            SizedBox(height: 25,)   ,
           ElevatedButton(onPressed: () {},child: Text("ok",style: TextStyle(fontSize: 20,color: Colors.black),),
           style: ElevatedButton.styleFrom(backgroundColor: Colors.yellowAccent),

           ),

           Padding(
             padding: const EdgeInsets.only(right: 250.0),
             child: Text("help",style: TextStyle(fontSize: 20,
                 decoration: TextDecoration.underline,decorationStyle:TextDecorationStyle.dotted),),
           ),
           Image(image: AssetImage("assets/img/kick.jpg"),),
        ],

      ),
    );
  }
}
















































































































































