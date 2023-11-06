import 'dart:ui';

import 'package:flutter/material.dart';
class uidesign extends StatelessWidget {
  const uidesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body:


        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  height: 200,
                  width: 200,

                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/img/bg1.jpeg"),
                      fit: BoxFit.fill
                    )
                  ),

                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: ClipRRect( borderRadius:BorderRadius.circular(20),
                        child: BackdropFilter(filter: ImageFilter.blur(sigmaY: 10,sigmaX: 10),
                            child: Center(child: Text("ji",style: TextStyle(fontSize: 50),))),
                      ),
                    ),

                ),
              ),
            )
          ],
        ),
      //
      // Container(
      //   height: double.infinity,
      //   width: double.infinity,
      //   decoration: BoxDecoration(
      //     image: DecorationImage(image: AssetImage("assets/img/bgtrain.jpeg"),
      //       fit: BoxFit.cover,
      //   ), //bgimage
      //   ),
      // //bgimage
      //
      //
      //
      //       child:
      //       Column( children: [
      //         SizedBox(height: 10,),
      //         CircleAvatar(backgroundImage: AssetImage("assets/img/bgbluebird.jpeg"),radius: 60),
      //         SizedBox(height: 10),
      //
      //
      //
      //
      //         Container(
      //           height: 480,
      //           width: 370,
      //           decoration: BoxDecoration(
      //             border: Border.all(),
      //             borderRadius: BorderRadius.circular(25),
      //             image: DecorationImage(image: AssetImage("assets/img/doge1.jpeg"),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //
      //
      //           child: Column(
      //               children: [
      //                 Padding(
      //                   padding: const EdgeInsets.all(8.0),
      //                   child: Row(
      //                   children: [
      //                     Container(
      //                       height: 190,
      //                       width: 160,
      //                       decoration: BoxDecoration(
      //                         border: Border.all(),
      //                         borderRadius: BorderRadius.horizontal(),color: Colors.white,
      //                         image: DecorationImage(image: AssetImage("assets/img/bgboat.jpeg"),fit: BoxFit.cover),
      //
      //                       ),
      //
      //
      //                       child: Column(
      //                         children: [ Container(
      //                           height: 160,
      //                           width: 160,
      //
      //                         ),
      //                           Container(
      //                             height: 28,
      //                            width: 160,
      //                           decoration: BoxDecoration(
      //                             border: Border.all(),
      //                             borderRadius: BorderRadius.horizontal(),color: Colors.white,
      //
      //
      //                           ),
      //                             child:Center(child: Text("BOAT")),
      //                              ),
      //                         ],
      //                       ),
      //                       // child: Text("Boat1"),
      //                     ),
      //                     SizedBox(width: 25),
      //                     Container(
      //                       height: 190,
      //                         width: 160,
      //                         decoration: BoxDecoration(
      //                           border: Border.all(),
      //                           borderRadius: BorderRadius.horizontal(),color: Colors.white,
      //                           image: DecorationImage(image: AssetImage("assets/img/bgboat.jpeg"),
      //                           fit:BoxFit.fill,
      //                           ),
      //
      //                         ),
      //                       child: Padding(
      //                         padding: const EdgeInsets.only(top: 160.0),
      //                         child: Container(
      //                           decoration: BoxDecoration(
      //                             border: Border.all(),color: Colors.white,
      //                           ),
      //                           child: Container(
      //                             child: Center(child: (Text("Boat2")),),
      //                           ),
      //                         ),
      //
      //
      //                       ),
      //
      //                     )
      //
      //                   ],
      //                   ),
      //                 ),
      //
      //                 Row(
      //                   children: [
      //                   Container(
      //                     height: 150,
      //                     width: 150,
      //                     decoration: BoxDecoration(
      //                       image: DecorationImage(image: AssetImage("assets/img/bgblue.jpeg")),
      //                     ),
      //                   ),
      //                   Column( children: [SizedBox(height: 5,),
      //                     Container(
      //                       height: 100 ,
      //                       width: 100,
      //                       decoration: BoxDecoration(
      //                         image: DecorationImage(image: AssetImage("assets/img/bgnat.jpeg"),fit: BoxFit.fill),
      //                       ),
      //                     ),
      //                     SizedBox(height: 20,),
      //                     Container(
      //                       height: 100,
      //                       width: 100,
      //                       decoration: BoxDecoration(
      //                         image: DecorationImage(image: AssetImage("assets/img/bgblue.jpeg"),fit: BoxFit.fill),
      //                       ),
      //                     )
      //                   ],
      //                   ),
      //                    SizedBox(width: 10,),
      //
      //                    Expanded(child: Text("ABCDEFG   HIJKLMNOPQRSTUVWXYZ",
      //                      style: TextStyle(color: Colors.white,fontSize: 20),
      //                    ),)
      //
      //
      //
      //
      //
      //                 ],
      //
      //
      //
      //                 )
      //
      //               ],
      //
      //             ),
      //         ),
      //
      //
      //
      //        SizedBox(height: 10,),
      //        Container(
      //          height: 200,
      //          width: 400,
      //          decoration: BoxDecoration(
      //              border: Border.all(),
      //              borderRadius: BorderRadius.circular(25),color: Colors.grey,
      //          ),
      //
      //          child:Column(
      //            children: [
      //              Padding(
      //                padding: const EdgeInsets.all(10.0),
      //                child: TextFormField(
      //                  decoration: InputDecoration(hintText: ("USER NAME"),filled:true,fillColor: Colors.blue,
      //                    border: OutlineInputBorder(),
      //
      //
      //                  ),
      //
      //
      //                ),
      //              ),
      //              SizedBox(height: 20),
      //              ElevatedButton(onPressed: (){},
      //                child: Text("login",style: TextStyle(color: Colors.black,fontSize: 30,),),
      //                style: ElevatedButton.styleFrom(shape: CircleBorder(),
      //                  backgroundColor: Colors.deepOrange,
      //                  padding: EdgeInsets.all(30),),
      //              ),
      //            ]
      //
      //          ),
      //
      //
      //        ),
      //
      //
      //
      //
      //
      //
      //
      //     ),


     // ), //bg image main container
    );
  }
}
