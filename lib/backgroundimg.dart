import 'package:flutter/material.dart';
class backgroun extends StatelessWidget {
  const backgroun({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column( children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 450,
          width: 400,
          decoration: BoxDecoration(border:Border.all(),
            borderRadius:BorderRadius.circular(40),
            image: DecorationImage(image:AssetImage("assets/img/bgbird.jpeg"),
                fit: BoxFit.fill),
          ),
          child: Column ( children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/img/bgbluebird.jpeg"),radius: 60,
            ),

            //Image.asset("assets/img/doge.jpeg"),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(icon:Icon(Icons.person),
                hintText:"USER NAME",
                border: OutlineInputBorder(),
                ),

              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(icon:Icon(Icons.key),
                hintText: "PASS WORD",
                border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){}, child: Text("login"),),





          ],
          ),
        ),
      ),


            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(

                height: 360,
                width: 350 ,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(40),



                  ),
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.horizontal(),
                        image: DecorationImage(
                          image: AssetImage("assets/img/cheems.jpeg"),
                          fit: BoxFit.fill,
                        )
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 60,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.horizontal(),
                                image: DecorationImage(image: AssetImage("assets/img/kick.jpg"),
                                  alignment: Alignment.topRight,
                                  fit: BoxFit.fill,

                                )

                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),



          ],

        )


      );







  }
}

