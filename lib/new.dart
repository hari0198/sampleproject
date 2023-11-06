import 'package:flutter/material.dart';

import 'backgroundimg.dart';




class newclass extends StatelessWidget {
  const newclass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: Container(
          height: 150,
          width:  160,
          decoration: BoxDecoration(
            color: Colors.cyan,
              shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/img/hari.png")
            )

          ),

        ),


        title: Center(child: Text("GT",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold),),
       ),
        actions:[Padding(padding: EdgeInsets.all(8.0),child: Icon(Icons.menu,size: 30,color: Colors.deepOrange,),),],
        
      ),
      body: ListView(children: [

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: GestureDetector(
               onTap: ()
               {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const backgroun()),
                 );
               },
               child: Container(
                height : 300,
                width: 500,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image:AssetImage("assets/img/kick.jpg"),
                    fit: BoxFit.fill,

                  ),

          ),

          ),
             ),
           ),




        SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.all(10.0),

          child: TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'enter name',
              border: OutlineInputBorder(),
            ),
          ),
        ),

        SizedBox(height: 25,),

       Padding(
         padding: const EdgeInsets.all(10.0),
         child: TextFormField(
      decoration: InputDecoration(
        icon:Icon(Icons.key),
      hintText: 'password',
          border: OutlineInputBorder(),


      ),
      ),
       ),
       SizedBox(height: 40),
        ElevatedButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const backgroun()),
          );


        },
          child: Text("login",style: TextStyle(color: Colors.black,fontSize: 30,),),
          style: ElevatedButton.styleFrom(shape: CircleBorder(),
              backgroundColor: Colors.yellowAccent,
              padding: EdgeInsets.all(30),),
        ),


    ],

          ),
      
    );
  }
}

