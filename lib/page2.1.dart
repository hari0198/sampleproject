import 'package:flutter/material.dart';
class page3 extends StatelessWidget {
  const page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        leading: null,

        title: Text("page2"),
      ),
      body: Container(
        height:double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/img/bg2.jpeg"),fit: BoxFit.fill)

        ),

        child: Row(
          children: [SizedBox(width: 40),
            Column(
              children: [SizedBox(height: 40,),
                Container(

                  height:120,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill)

                  ),
                ),

                SizedBox(height:15),
                Container(

                  height:120,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill)

                  ),
                ),
                SizedBox(height:15),
                Container(

                  height:120,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill)

                  ),
                ),
                SizedBox(height:15),
                Container(

                  height:120,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill)

                  ),
                ),
                SizedBox(height:15),
                Container(

                  height:120,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill)

                  ),
                ),


              ],

            ),SizedBox(width: 15,),
            Column(
              children: [SizedBox(height: 40,),
                Container(

                  height:120,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill)

                  ),
                ),

                SizedBox(height:15),
                Container(

                  height:120,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill)

                  ),
                ),
                SizedBox(height:15),
                Container(

                  height:120,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill)

                  ),
                ),
                SizedBox(height:15),
                Container(

                  height:120,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill)

                  ),
                ),
                SizedBox(height:15),
                Container(

                  height:120,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),fit: BoxFit.fill)

                  ),
                ),

              ],

            ),

          ],
        ),

      ),
    );
  }
}
