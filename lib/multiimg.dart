import 'package:flutter/material.dart';
class img extends StatelessWidget {
  const img({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
        Container(
          height: double.infinity,
             width: double.infinity,
             decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage("assets/img/flipkartlogo.png"),fit: BoxFit.fill,
             ), //bgimage
             ),


          child: Column(
            children: [SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 500,
                  width: 450,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(25),color: Colors.white,
                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(top: 23.0),
                    child: Column(
                      children: [SizedBox(height: 05,),
                        Row(
                          children: [SizedBox(width: 15,),
                            Container(
                                height: 170,
                                width: 160,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/img/flipkartlogo.png"),fit: BoxFit.fill),
                                )
                              ),



                            SizedBox(width: 25,),
                            Column(children: [
                              Container(

                                height: 80,
                                width: 75,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill),

                                ),
                              ),
                              SizedBox(height: 05,),
                              Container(

                                height: 80,
                                width: 75,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill),
                                ),
                              ),
                            ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: [
                                Container(

                                  height: 80,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  height: 80,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill),
                                  ),
                                )
                              ],
                             )
                           ],
                        ),
                        SizedBox(height: 30,),
                        Row( children: [ SizedBox(width: 15,),
                          Container(

                            height: 100,
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill),
                            ),
                            child: Center(child: Text("A",style: TextStyle(color: Colors.black,fontSize: 50),)),
                          ),
                          SizedBox(width: 25,),
                          Container(

                            height: 100,
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill),
                            ),
                            child: Center(child: Text("B",style: TextStyle(color: Colors.black,fontSize: 50),)),
                          ),
                        ],
                        ),
                        SizedBox(height: 40,),
                        Row( children: [ SizedBox(width: 15,),
                          Container(

                            height: 100,
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill),
                            ),
                            child: Center(child: Text("C",style: TextStyle(color: Colors.black,fontSize: 50),)),
                          ),
                          SizedBox(width: 25,),
                          Container(

                            height: 100,
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill),
                            ),
                            child: Center(child: Text("D",style: TextStyle(color: Colors.black,fontSize: 50),)),
                          ),
                        ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),



              SizedBox(height: 2,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 295,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.horizontal(),
                    image: DecorationImage(image: AssetImage("assets/img/bg3.jpeg"),fit: BoxFit.fill),
                  ),
                  child: Column(
                    children: [SizedBox(height: 100,),
                      Row(
                        children: [SizedBox(width: 10,),
                          Container(
                            height: 100,
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(width: 25,),
                          Column(
                            children: [
                              Text("SDASJGDASHDJ",style: TextStyle(color: Colors.white),),
                              Text("SDASJGDASHDJ",style: TextStyle(color: Colors.white),),
                              Text("SDASJGDASHDJ",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }
}
