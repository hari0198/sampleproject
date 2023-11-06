import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class ratingbar extends StatelessWidget {
  const ratingbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        leading: Icon(Icons.menu,size: 50,),
        title: Padding(
          padding: const EdgeInsets.only(right:20.0),
          child: Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/img/cheems.jpeg"),radius: 28,
            ),
            
          ),
        ),
        actions: [
          Icon(Icons.close,size: 50,),

      ],
        
      ),



      body:
      Column(
        children: [ SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              height: 300,
              width: 400,
              decoration: BoxDecoration(
                  border: Border.all(),
                borderRadius: BorderRadius.horizontal(),
              ),
              child: Row(
                children: [SizedBox(width: 10,),
                  Container(
                      height: 140,
                      width: 120,
                      decoration: BoxDecoration(border: Border.all(),
                          image: DecorationImage(image: (AssetImage("assets/img/cheems.jpeg")
                      ),fit: BoxFit.fill,
                      )
                      ),
                  ),
                  RatingBar.builder(initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal:4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.yellowAccent,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),

            ),
          ),
          SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Container(
                  height: 150,
                  width: 130,
                  child: Image(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill,)),


             Expanded(child: Text("DJFKLDSJLFJDSJEIJFRWIFJFDJODJOKFJKDSJFDSJFOKDSKFJI")),


              Container(
                  height: 150,
                  width: 130,
                  child: Image(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill,),
              ),
            ],


            ),
          )


        ],

      ),
    );
  }
}
