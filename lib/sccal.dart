import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled/colors.dart';

class sscal extends StatefulWidget {
  const sscal({super.key});

  @override
  State<sscal> createState() => _sscalState();
}

class _sscalState extends State<sscal> {
  TextEditingController a1=TextEditingController();
  TextEditingController a2=TextEditingController();
  TextEditingController a3=TextEditingController();
  TextEditingController a4=TextEditingController();
  TextEditingController a5=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: spg,
        title: Center(child: Text("Interest Calculator",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 35),)),

      ),
      body:
      SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              Text("Principal amount",style: TextStyle(fontSize: 20,color: Colors.white,),),
            ],
          ),
          TextFormField(controller: a1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("Rate of interest (p.a)",style: TextStyle(fontSize: 20,color: Colors.white,),),
            ],
          ),
             TextFormField(controller: a2,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
               keyboardType: TextInputType.number,
               textInputAction: TextInputAction.done,
             ),
                SizedBox(height: 10,),
              Row(
                  children: [
                Text("Time period in Years",style: TextStyle(fontSize: 20,color: Colors.white,),),
                  ],
                 ),
             TextFormField(controller: a3,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
               keyboardType: TextInputType.number,
               textInputAction: TextInputAction.done,
             ),
             SizedBox(height: 10,),

          SizedBox(height: 25,),
         Row(
           children: [
             Text("    Total interest                     Total amount",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)
           ],
         ),

          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 70,width: 170,
                  child: TextFormField(controller: a4,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.green,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(height: 70,width: 170,
                    child: TextFormField(controller: a5,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:15),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.green,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),






              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: ()
            {
              setState(() {
                double a=double.parse(a1.text);
                double b=double.parse(a2.text);
                double c=double.parse(a3.text);
                double d= (a*b*c)/100;
                double e=(a*b*c)/100+a;
                a4.text=d.toString();
                a5.text=e.toString();

              });

            },
              child: Text("Simple Interest",style: TextStyle(fontSize: 20,color: Colors.white),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent,fixedSize:Size(300, 40)),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: ()
            {
              double a=double.parse(a1.text);
              double b=double.parse(a2.text);
              double c=double.parse(a3.text);
              double d = a * pow((1+ (b/100)), c)-a;
              double e = a * pow((1+ (b/100)), c);

              a4.text=d.toString();
              a5.text=e.toString();


            }, child: Text("Compound Interest",style: TextStyle(fontSize: 20,color: Colors.white),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent,fixedSize:Size(300, 40)),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: ()
            {

             a1.clear();
             a2.clear();
             a3.clear();
             a4.clear();
             a5.clear();



            }, child: Text("Clear",style: TextStyle(fontSize: 20,color: Colors.white),),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent,fixedSize:Size(300, 40)),),
          ),


           Container(
             height: 245,
             width: 250,
             decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage("assets/img/money.gif"))
             ),


           )























        ],
        ),
      ),







    );
  }
}
