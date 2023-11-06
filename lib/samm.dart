import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'colors.dart';


class Saaa extends StatefulWidget {
  const Saaa({super.key});

  @override
  State<Saaa> createState() => _SaaaState();
}

class _SaaaState extends State<Saaa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: az,
      body: Column(
        children: [

          Container(
            height: 400,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: 4,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(15)),
                    child: Text("ok"),
                  );
                }),
          ),





///list view
          Container(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext con,index)
                {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 150,
                      color: Colors.cyan,
                      child: Text("ok"),
                    ),
                  );
                }
            ),
          ),



///slider
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 200,
              aspectRatio: 20/9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
             // onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            ),
            itemCount: 15,
            itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
            {
             return Container(
                height: 200,
                width: 500,
                color: Colors.cyan,
                child: Text(itemIndex.toString()),
              );
            }
          ),

























































        ],
      ),
    );
  }
}
