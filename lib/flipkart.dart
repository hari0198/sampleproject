import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:stack/stack.dart';
import 'package:untitled/flipkart2.dart';
import 'package:untitled/modelclass.dart';
import 'package:untitled/validation.dart';
import 'colors.dart';

class flipk extends StatefulWidget {

  const flipk({super.key});

  @override
  State<flipk> createState() => _flipkState();
}

class _flipkState extends State<flipk> {
  var currentindex =0;
  int _index = 0 ;


  final pages = [
    Center(child: Text("1")),
    flipk2(),
  ];

  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(

            width: 155,
            height: 40,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),
            color: fk,
            ),

              child: Row(
                children: [SizedBox(width: 25,),
                 Image(image: AssetImage("assets/img/flipkartlogo.png"),height: 150,width:30,fit: BoxFit.fill,)
                  ,
                  Text("Flipkart",style:TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
                  ),
                ],
              ),

            ),

            SizedBox(width: 15,),
            Container(

              width: 155,
              height: 40,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),
                color: Colors.grey.withOpacity(0.200),
              ),

              child: Row(
                children: [SizedBox(width: 10),
                  Image(image: AssetImage("assets/img/flipkartlogo.png"),height: 150,width:30,fit: BoxFit.fill,),
                  Text("Grocery",style:TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
                  ),
                ],
              ),

            ),
          ],
        ),
      ),

      body:SingleChildScrollView(
        child: Column(
          children: [SizedBox(height: 10,),
            Row(
              children: [
                Column(
                  children: [
                    Text("Brand Mall",style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold),),
                    Container(child:
                    ToggleSwitch(
                      minHeight: 20,
                      minWidth: 35.0,
                      cornerRadius: 45.0,
                      activeBgColors: [[Colors.white], [Colors.white]],
                      activeFgColor: Colors.white,
                      inactiveBgColor: Colors.grey,
                      inactiveFgColor: Colors.black,
                      initialLabelIndex: 1,
                      totalSwitches: 2,
                      labels: ['On', 'Off',],
                      radiusStyle: true,borderWidth: 2,borderColor: [Colors.grey],
                      ),

                    ),
                  ],
                ),
                SizedBox(width: 10,),
                 Container(
                   width: 270,
                   height: 45,
                   padding: EdgeInsets.all(8),
                   decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1),
                     borderRadius: BorderRadius.circular(7),
                     color: Colors.grey.withOpacity(0.100),
                   ),
                    child:
                     Row(
                       children: [
                         Icon(Icons.search,color: Colors.grey.shade500),
                         SizedBox(width: 5,),
                         Text("Search for Products",style: TextStyle(color: Colors.grey,fontSize: 17 ),),
                         SizedBox(width: 5,),
                         Icon(Icons.mic,color: Colors.grey.shade400),
                         SizedBox(width: 5,),
                         Icon(Icons.camera_alt_outlined,color: Colors.grey.shade400),
                       ],
                     ),
                 )

              ],
            ),
            SizedBox(height:15),
            CarouselSlider.builder(
                options: CarouselOptions(
                    onPageChanged: (index,reason){
            setState(() {
            currentindex=index;
            });
            },
                  height: 200,
                  aspectRatio: 50/9,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: false,
                  // onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
                itemCount: lis.length,
                itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
                {
                  return Container(

                    height: double.infinity,
                    width: double.infinity,
                    child: Image(image: AssetImage("assets/img/slideimg.jpg"),
                        fit: BoxFit.fill
                    ),













                  );

                }
            ),



            SizedBox(height: 19,),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 165,
                    width: 110,

                    decoration: BoxDecoration(
                    color: Colors.white,
                    ),
                    child:
                    Column(
                      children: [
                        Container(
                        child:
                        CircleAvatar(child:
                        Icon(Icons.contact_mail_sharp,size: 45,),radius: 35,
                            ),

                        ),
                        SizedBox(height: 4,),
                        Text("Money",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      ],
                    ),
                  ),

                  Container(
                    height: 165,
                    width: 110,

                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child:
                    Column(
                      children: [
                        Container(
                          child:
                          CircleAvatar(child:
                          Icon(Icons.monetization_on,color: Colors.blue,size: 45,),radius: 35,
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("Liveshop+",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      ],
                    ),
                  ),
                  Container(
                    height: 165,
                    width: 110,

                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child:
                    Column(
                      children: [
                        Container(
                          child:
                          CircleAvatar(child:
                          Icon(Icons.contact_mail_sharp,size: 45,color: Colors.cyanAccent,),radius: 35,
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("EMI",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      ],
                    ),
                  ),
                  Container(
                    height: 165,
                    width: 110,

                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child:
                    Column(
                      children: [
                        Container(
                          child:
                          CircleAvatar(child:
                          Icon(Icons.gamepad,size: 45,color: Colors.black,),radius: 35,
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("Gamezone",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      ],
                    ),
                  ),
                  Container(
                    height: 165,
                    width: 110,

                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child:
                    Column(
                      children: [
                        Container(
                          child:
                          CircleAvatar(child:
                          Icon(Icons.electric_bolt,size: 45,color: Colors.red,),radius: 35,
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("Recharge",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      ],
                    ),
                  ),
                  Container(
                    height: 165,
                    width: 110,

                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child:
                    Column(
                      children: [
                        Container(
                          child:
                          CircleAvatar(child:
                          Icon(Icons.face,size: 45,color: Colors.lightGreen,),radius: 35,
                          ),
                        ),
                        SizedBox(height: 4,),
                        Text("beauty",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      ],
                    ),
                  ),

                  ],
              ),

            ),
            // SizedBox(height: 10,),
            // Container(
            //   height: 120,
            //   child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemCount: 25,
            //       itemBuilder: (BuildContext con,index)
            //       {
            //         return Container(
            //           height: 40,
            //           width: 90,
            //           color: Colors.white,
            //           child: Column(
            //             children: [
            //               CircleAvatar(child: Icon(Icons.image,size: 50,color: Colors.red,),radius: 35,),
            //               Text("Plus",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            //
            //             ],
            //           )
            //
            //         );
            //       }
            //   ),
            // ),
            
            SizedBox(height: 19,),
            Row(
              children: [
                SizedBox(width:5),
                Container(
                  height: 155,
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(children: [
                    Container(
                      height: 110,
                      width: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/img/1.jpg"),fit: BoxFit.fill),

                      ),

                    ),
                    Center(child: Text("Grocery",style: TextStyle(fontWeight:FontWeight.bold),),),
                    Center(child: Text("From Rs.1,299",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15),
                    ),
                    ),
                  ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 155,
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(children: [
                    Container(
                      height: 110,
                      width: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/img/2.jpg"),fit: BoxFit.fill),
                      ),

                    ),
                    Center(child: Text("Accessories",style: TextStyle(fontWeight:FontWeight.bold),),),
                    Center(child: Text("From Rs.1,599",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15),
                    ),
                    ),
                  ],
                  ),
                ),

                SizedBox(width: 10,),
                Container(
                  height: 155,
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(children: [
                    Container(
                      height: 110,
                      width: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/img/3.jpg"),fit: BoxFit.fill),
                      ),

                    ),
                    Center(child: Text("TWS",style: TextStyle(fontWeight:FontWeight.bold),),),
                    Center(child: Text("From Rs.1,899",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15),
                    ),
                    ),
                  ],
                  ),
                ),

              ],

            ),
            SizedBox(height: 19,),
            Padding(
              padding: const EdgeInsets.only(right:220),
              child: Text("Recently Viewed",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            ),

            SizedBox(height: 15,),
            Container(
              height: 229,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext con,index)

                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 145,
                          width: 130,
                          decoration: BoxDecoration(
                            border: Border.all()

                          ),
                          child: Column(
                            children: [
                              Image(image: AssetImage("assets/img/list2.jpg"),),
                              Text("Plus",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                            ],
                              ),


                      ),
                    );
                  }
              ),
            ),

            SizedBox(height: 19,),
            Padding(
              padding: const EdgeInsets.only(right:250),
              child: Text("Sponsored",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            ),


        GestureDetector(
          onTap: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const flipk2()),

            );
          },

          child:Container(
            height: 600,

            child: GridView.builder(
                gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: 4,
                physics: new NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    height: 150,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(border: Border.all(),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 160,
                          child: ClipRect(),
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/img/1.jpg"),fit: BoxFit.fitWidth),
                          ),
                        ),
                        SizedBox(height:5,),
                        Text("Grocery",style: TextStyle(fontWeight:FontWeight.bold),),
                        Text("From Rs.1,899",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15),),


                      ],
                    ),


                  );
                }),
          ),
        ),








          ],


        ),



        
      ),
      bottomNavigationBar: BottomNavigationBar(
          type : BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.gif_box_sharp),label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none_outlined),label: "Notification"),
          BottomNavigationBarItem(icon: GestureDetector(onTap: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const FormScreen()),

            );
          }, child: Icon(Icons.account_circle)),label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: "Cart"),

        ],
        currentIndex: _index,
        onTap: tap,
      ) ,









      
    );
  }
}
