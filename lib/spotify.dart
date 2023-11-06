import 'package:flutter/material.dart';
import 'package:untitled/colors.dart';
import 'package:untitled/flipkart.dart';
import 'package:untitled/flipkart2.dart';
import 'package:untitled/insta.dart';
import 'package:untitled/validation.dart';

class sliver extends StatefulWidget {
  const sliver({super.key});

  @override
  State<sliver> createState() => _sliverState();
}

class _sliverState extends State<sliver> {
  var currentindex =0;
  int _index = 0 ;


  final pages = [

    sliver(),
  ];

  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:spbl,
      body:

          NestedScrollView( headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [  SliverAppBar(backgroundColor: Colors.white12,
              pinned: true,
              leading: Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(backgroundColor: Colors.white12,
                  child: Icon(Icons.arrow_back, color: Colors.white70, size: 35,),
                  radius: 45,),
              ),
              actions: [
                Icon(Icons.favorite_border_outlined, size: 30,
                  color: Colors.white70,),
                SizedBox(width: 5,),
                Icon(Icons.more_vert, size: 30, color: Colors.white70,),


              ],

              expandedHeight: 390.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("99 songs (Album)",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textScaleFactor: 1),

                ),
                background: Container(height: 100,
                  width: 100,
                  foregroundDecoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      stops: [0, 2.00],
                    ),
                  ),
                  child: Column(
                    children: [SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(top:75),
                        child: Row( mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //Icon(Icons.arrow_back),

                            Padding(
                              padding: const EdgeInsets.only(left:25),
                              child: Container(
                                height: 30,
                                width: 230,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                    color: Colors.white12
                                ),

                                child: Center(
                                  child: TextFormField(
                                    textAlign: TextAlign.center,
                                    decoration: const InputDecoration(
                                      prefixIcon:  Icon(Icons.search,color: Colors.white70,),
                                        border:InputBorder.none,
                                        contentPadding: EdgeInsets.only(bottom: 15.0),
                                        hintText: ('Find in playlist'),
                                        hintStyle:TextStyle(color: Colors.white70,),



                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white12,
                                ),
                               child: Center(child: Text("sort",style: TextStyle(color: Colors.white70,fontSize: 15,fontWeight: FontWeight.bold),)),
                              ),
                            ),




                          ],
                        ),
                      ),
                      Container(
                        height: 250,
                        width: 450,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/img/99.jpeg',),fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ];
          },
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('99 Songs (Album) by ARR',style: TextStyle(color: Colors.white70,fontSize: 15),),
                      Icon(Icons.favorite,color: Colors.red,)


                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/img/spf.png"),fit: BoxFit.fill,
                          ),
                        ),

                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(  text: 'Spotify',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

                        ],

                        ),

                      ),

                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Text('79,509 likes . 6h 29min',style: TextStyle(color: Colors.white70),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.favorite_border,color: Colors.white70),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_circle_down_sharp,color: Colors.white70),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.more_vert,color: Colors.white70),
                        ),
                        SizedBox(width: 120,),
                        Icon(Icons.shuffle,color: Colors.white70),
                        SizedBox(width:15,),
                        CircleAvatar(backgroundColor:spg,
                          child: Icon(Icons.play_arrow,color: Colors.black,size: 40,),radius: 30,),
                      ],
                    ),
                  ),

                  Container(
                      height:800,
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder:  (BuildContext con, index)
                          {
                            return Card(
                              color: Colors.transparent,
                              child: ListTile(
                                leading:  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/img/99.jpeg"),fit: BoxFit.fill),
                                    )
                                ),
                                title: Text("Nee Illa Naanum",style: TextStyle(color: Colors.white),),
                                subtitle:
                                Row(
                                  children: [
                                    Container(
                                      height: 18,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),color: Colors.grey,
                                      ),
                                      child:  Center(child: Text("LYRICS",style: TextStyle(color: Colors.black54,fontSize: 10,fontWeight: FontWeight.bold),))


                                    ),
                                    Text(' A.R.Rahman, Haricharan',style:TextStyle(color: Colors.white70,fontSize: 13),)
                                  ],
                                ),
                                trailing: Icon(Icons.more_vert,color: Colors.white70,),
                                // child: Text("Ale ale"),
                                // subtitle: Container(
                                //   height: 5,
                                //   width: 20,
                                //   decoration: BoxDecoration(
                                //     border: Border.all(),
                                //
                                //   ),
                                // ),
                              ),
                            );
                          }

                      ))

                ],
              ),
            ),),

      bottomNavigationBar: BottomNavigationBar(backgroundColor: spbl,
        type : BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color:Colors.white70),label: "Home"),

          BottomNavigationBarItem(icon:GestureDetector(onTap: ()
          {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const flipk()),

          );
          },child: Icon(Icons.search,color:Colors.white70),),label: "Search"),




          BottomNavigationBarItem(icon:GestureDetector(onTap: ()
    {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const flipk2()),

    );
    },
    child:Icon(Icons.electric_bolt,color:Colors.white70),),label: "New & Hot"),





          BottomNavigationBarItem(icon: GestureDetector(onTap: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const FormScreen()),

            );
          }, child: Icon(Icons.file_download_outlined,color:Colors.white70)),label: "Downloads"),

          BottomNavigationBarItem(icon: GestureDetector(onTap: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Ins()),

            );
          }, child: Icon(Icons.account_circle_outlined,color:Colors.white70)),label: "Account"),


        ],
        currentIndex: _index,
        onTap: tap,
      ) ,




    );
  }
}
