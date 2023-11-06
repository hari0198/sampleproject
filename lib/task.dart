import 'package:flutter/material.dart';

class task extends StatefulWidget {
  const task({super.key});

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,

          title:  Row(children: [
            Container(
              height: 71,
              width: 55,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/img/utubee.jpg"),fit: BoxFit.fill)
              ),

            ),
            Text("Studio",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)
          ],),
          actions: [
            Icon(Icons.add_circle_outline,color: Colors.grey,),SizedBox(width: 10,),
            Icon(Icons.notifications_none_outlined,color: Colors.grey,),SizedBox(width: 10,),
            CircleAvatar(
              backgroundImage: AssetImage('assets/img/gt.jpeg'),radius: 12,
            ),
            SizedBox(width: 5,),

          ],

        ),
      body: SingleChildScrollView(
        child: Column(

          children: [Divider(
            height:15,

            thickness: 1,
            indent: 0,
            endIndent: 0,
            color: Colors.grey,
          ),
            Row(children: [SizedBox(width: 10,),
        CircleAvatar(
        backgroundImage: AssetImage('assets/img/gt.jpeg'),radius: 40,),
              SizedBox(width: 10,),
              Column(children: [
                Text("GT Software College",style: TextStyle(fontSize: 25,color: Colors.white),),
                Padding(
                  padding: const EdgeInsets.only(right: 210.0),
                  child: Text("4",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),

                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150.0),
                  child: Text("Total Subscribers",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.grey),),
                ),

              ],

              )

            ],),

            SizedBox(height: 25,),
            Row(
              children: [SizedBox(width: 10,),
                Text("Channel analytics",style: TextStyle(fontSize: 20,color: Colors.white),),
                SizedBox(width: 90,),
                 Text("Last 28 days",style: TextStyle(fontSize: 15,color: Colors.grey),),

              ],

            ),
            Row(
              children: [
                SizedBox(width: 6,),
                Container(
                  height: 60,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    color: Colors.white12,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [SizedBox(width: 10,),
                          Text("views",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        ],
                      ),
                      Row(children: [SizedBox(width: 10,),
                        Text("4.5k",style: TextStyle(fontSize: 20,color: Colors.white),),
                      ],)


                    ],
                  ),
                ),

                SizedBox(width: 10),
                Container(
                  height: 60,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white12,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [SizedBox(width: 10,),
                          Text("Watch time (hours)",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        ],
                      ),
                      Row(children: [SizedBox(width: 10,),
                        Text("60.5",style: TextStyle(fontSize: 20,color: Colors.white),),
                      ],)


                    ],
                  ),
                )




              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [SizedBox(width: 10),
                Text("Latest publsihed content",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
              ],
            ),
            SizedBox(height: 5),

            Container(
              height: 130,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white12,
              ),
              child: Column(children: [
                SizedBox(height: 5,),
                Row(children: [SizedBox(width: 20,),
                  Container(
                    height: 60,
                    width: 20,
                    decoration:BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/img/gt.jpeg"),fit: BoxFit.fill)
                    ),),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("What is Full Stack Development?",style: TextStyle(fontSize: 15,color: Colors.white),),
                      ),

                        Padding(
                          padding: const EdgeInsets.only(right: 140.0),
                          child: Text("First 2 days",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        ),


                    ],


                  ),
                ],),
                SizedBox(height: 5,),
                Divider(
                  height:15,
                  thickness: 0,
                  indent: 20,
                  endIndent: 10,
                  color: Colors.grey,
                ),
                SizedBox(height: 15,),
                Row(
                  children: [   SizedBox(width: 15,),
                    Icon(Icons.bar_chart,color: Colors.white70,),
                    Text("3",style: TextStyle(fontSize: 15,color: Colors.grey),),
                    SizedBox(width: 15,),
                    Icon(Icons.thumb_up_off_alt,color: Colors.white70,),
                    Text("3",style: TextStyle(fontSize: 15,color: Colors.grey),),
                    SizedBox(width: 15,),
                    Icon(Icons.comment_outlined,color: Colors.white70,),
                    Text("3",style: TextStyle(fontSize: 15,color: Colors.grey),),


                  ],
                )



              ],),

            ),
            SizedBox(height: 20,),
            Container(
              height: 130,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white12,
              ),
              child: Column(children: [
                SizedBox(height: 5,),
                Row(children: [SizedBox(width: 20,),
                  Container(
                    height: 60,
                    width: 20,
                    decoration:BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/img/gt.jpeg"),fit: BoxFit.fill)
                    ),),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Looking for the Place to Learn",style: TextStyle(fontSize: 15,color: Colors.white),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 120.0),
                        child: Text("First 11 days",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      ),


                    ],


                  ),
                ],),
                SizedBox(height: 5,),
                Divider(
                  height:15,
                  thickness: 0,
                  indent: 20,
                  endIndent: 10,
                  color: Colors.grey,
                ),
                SizedBox(height: 15,),
                Row(
                  children: [   SizedBox(width: 15,),
                    Icon(Icons.bar_chart,color: Colors.white70,),
                    Text("3",style: TextStyle(fontSize: 15,color: Colors.grey),),
                    SizedBox(width: 15,),
                    Icon(Icons.thumb_up_off_alt,color: Colors.white70,),
                    Text("3",style: TextStyle(fontSize: 15,color: Colors.grey),),
                    SizedBox(width: 15,),
                    Icon(Icons.comment_outlined,color: Colors.white70,),
                    Text("3",style: TextStyle(fontSize: 15,color: Colors.grey),),


                  ],
                ),



              ],),

            ),
            SizedBox(height: 20,),
            Container(
              height: 130,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white12,
              ),
              child: Column(children: [
                SizedBox(height: 5,),
                Row(children: [SizedBox(width: 20,),
                  Container(
                    height: 60,
                    width: 20,
                    decoration:BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/img/gt.jpeg"),fit: BoxFit.fill)
                    ),),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("What is Full Stack Development?",style: TextStyle(fontSize: 15,color: Colors.white),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 140.0),
                        child: Text("First 2 days",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      ),


                    ],


                  ),
                ],),
                SizedBox(height: 5,),
                Divider(
                  height:15,
                  thickness: 0,
                  indent: 20,
                  endIndent: 10,
                  color: Colors.grey,
                ),
                SizedBox(height: 15,),
                Row(
                  children: [   SizedBox(width: 15,),
                    Icon(Icons.bar_chart,color: Colors.white70,),
                    Text("3",style: TextStyle(fontSize: 15,color: Colors.grey),),
                    SizedBox(width: 15,),
                    Icon(Icons.thumb_up_off_alt,color: Colors.white70,),
                    Text("3",style: TextStyle(fontSize: 15,color: Colors.grey),),
                    SizedBox(width: 15,),
                    Icon(Icons.comment_outlined,color: Colors.white70,),
                    Text("3",style: TextStyle(fontSize: 15,color: Colors.grey),),


                  ],
                )



              ],),

            ),

            SizedBox(height: 20,),
            Container(
              height: 130,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white12,
              ),
              child: Column(children: [
                SizedBox(height: 5,),
                Row(children: [SizedBox(width: 20,),
                  Container(
                    height: 60,
                    width: 20,
                    decoration:BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/img/gt.jpeg"),fit: BoxFit.fill)
                    ),),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("What is Full Stack Development?",style: TextStyle(fontSize: 15,color: Colors.white),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 140.0),
                        child: Text("First 2 days",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      ),


                    ],


                  ),
                ],),
                SizedBox(height: 5,),
                Divider(
                  height:15,
                  thickness: 0,
                  indent: 20,
                  endIndent: 10,
                  color: Colors.grey,
                ),
                SizedBox(height: 15,),
                Row(
                  children: [   SizedBox(width: 15,),
                    Icon(Icons.bar_chart,color: Colors.white70,),
                    Text("3",style: TextStyle(fontSize: 15,color: Colors.grey),),
                    SizedBox(width: 15,),
                    Icon(Icons.thumb_up_off_alt,color: Colors.white70,),
                    Text("3",style: TextStyle(fontSize: 15,color: Colors.grey),),
                    SizedBox(width: 15,),
                    Icon(Icons.comment_outlined,color: Colors.white70,),
                    Text("3",style: TextStyle(fontSize: 15,color: Colors.grey),),


                  ],
                )



              ],),

            ),






          ],
        ),
      ),









      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.black45,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        type : BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: Icon(Icons.dashboard,color: Colors.white,),
            label: 'Dashboard',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined,color: Colors.white,),
            label: 'Content',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart_outlined,color: Colors.white,),
            label: 'Analyrrics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment_outlined,color: Colors.white,),
            label: 'Comments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money,color: Colors.white,),
            label: 'Earn',

          ),



        ],
      ),













    );
  }
}
