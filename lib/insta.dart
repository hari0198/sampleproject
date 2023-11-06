import 'package:flutter/material.dart';
import 'package:untitled/colors.dart';

class Ins extends StatefulWidget {
  const Ins({Key? key}) : super(key: key);

  @override
  State<Ins> createState() => _InsState();
}

class _InsState extends State<Ins> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: spbl,
      appBar: AppBar(automaticallyImplyLeading: false,
        backgroundColor: spbl,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Text("mr.darkeyebrow",style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18,
              ),),
              IconButton(onPressed: (){},
                  icon: const Icon(Icons.keyboard_arrow_down_outlined,
                    color: Colors.white,)),
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: (){},
            icon: const Icon(Icons.add_box_outlined,color: Colors.white,),
            color: Colors.white,),
          IconButton(onPressed: (){},
            icon: const Icon(Icons.menu),
            color: Colors.white,),
        ],
      ),
      body:
      DefaultTabController(
        length: 2,
        child:Stack(
            children:[ NestedScrollView(
              headerSliverBuilder: (BuildContext context,bool innerBoxisScrolled){
                return[
                  SliverAppBar(automaticallyImplyLeading: false,
                    toolbarHeight: 332,
                    backgroundColor: spbl,
                    pinned: false,
                    flexibleSpace: Column(
                      children: [
                        SizedBox(
                          height: 140,
                          child: Row(
                            children: [
                              Column(
                                children: [SizedBox(width: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0,right: 8.0,top: 10.0,),
                                    child: Container(
                                      height: 100,
                                      width: 80,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage("assets/img/kickb.jpg"),
                                            fit: BoxFit.fill,
                                          )
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: const Text("Mr.darkeyebrow",style: TextStyle(color: Colors.white),),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: Center(
                                  child: RichText(text:  TextSpan(
                                      text: ' 51\n',
                                      style: TextStyle(fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.white),
                                      children: [
                                        TextSpan(
                                            text: 'Post',style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14)
                                        )
                                      ]
                                  )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: Center(
                                  child: RichText(text: const TextSpan(
                                      text: '  7.5M\n',
                                      style: TextStyle(fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.white),
                                      children: [
                                        TextSpan(
                                            text: 'Followers',style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14)
                                        )
                                      ]
                                  )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Center(
                                  child: RichText(text: const TextSpan(
                                      text: '     0\n',
                                      style: TextStyle(fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.white),

                                      children: [
                                        TextSpan(
                                            text: 'Following',style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14)
                                        )
                                      ]
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [SizedBox(width: 5,),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Container(
                                  height: 33,
                                  width: 127,
                                  decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(5),color: Colors.white12,
                                  ),
                                  child: const Center(
                                    child: Text("Following",style: TextStyle(
                                      color: Colors.white,)),)
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Container(
                                  height: 33,
                                  width: 127,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  color: Colors.white12,
                                  ),
                                  child: const Center(
                                    child: Text("Message",style: TextStyle(
                                      color: Colors.white,)),)
                              ),
                            ),
                            SizedBox(width: 6,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(5),color: Colors.white12,
                                  ),
                                  child:  Center(child: Icon(Icons.person_add,color: Colors.white,),),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 135,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 25,
                              itemBuilder: (BuildContext con,index)
                              {
                                return Container(
                                    height: 30,
                                    width: 90,
                                    color: Colors.transparent,
                                    child: Column(
                                      children: [
                                        CircleAvatar( backgroundImage: AssetImage('assets/img/kickb.jpg'),radius: 37,),
                                        Text("Highlights",style: TextStyle(fontSize: 15,color: Colors.white),),

                                      ],
                                    )

                                );
                              }
                          ),
                        ),








                      ],
                    ),
                  ),

                  SliverAppBar(
                    toolbarHeight: 30,
                    backgroundColor: spbl,
                    pinned: true,
                    primary: false,
                    title:Align(
                      alignment: AlignmentDirectional.center,
                      child: TabBar(
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.white,
                          isScrollable: true,
                          tabs: [
                            Padding(
                              padding: const EdgeInsets.only(right: 80.0),
                              child: Tab(
                                icon: Icon(Icons.grid_3x3_outlined,),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 80.0),
                              child: Tab(
                                icon: Icon(Icons.bookmark_add_outlined,),
                              ),
                            ),

                          ],
                      ),


                    ),
                  ),

                ];
              },



              body: TabBarView (children:
              [
                GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 150,
                        childAspectRatio: 4/ 3,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8),
                    itemCount: 25,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage("assets/img/kick.jpg"),
                                fit: BoxFit.fill)
                        ),
                      );
                    }
                ),
                GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 150,
                        childAspectRatio: 4/ 3,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 8),
                    itemCount: 25,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage("assets/img/kickb.jpg"),
                                fit: BoxFit.fill)
                        ),
                      );
                    }
                ),
              ]
              ),
            ),
            ]
        ),
      ),
    );
  }
}