import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';



class Cann extends StatefulWidget {
  const Cann({super.key});
  

  @override
  State<Cann> createState() => _CannState();
}

class _CannState extends State<Cann> {

  final ctrll =TextEditingController();

  String num1="",num2="";
  String optr= "";
  bool clk = false;
  List<int> l = [];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      appBar:
      AppBar(backgroundColor: Colors.black45,
        title: Text("Calculator",style: TextStyle(color: Colors.blue,fontSize: 40,fontWeight: FontWeight.bold)),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            TextFormField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
              border: OutlineInputBorder(),),

              controller: ctrll,style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold),
            keyboardType: TextInputType.none,),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Row(
                children: [SizedBox(width: 15,),
                  ElevatedButton(onPressed: (){

                    ctrll.clear();
                    optr="";
                    num2="";
                    num1="";



                  }, style: ElevatedButton.styleFrom(fixedSize: const Size(45, 45),primary: Colors.redAccent),
                    child: Text("C",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),),
                  SizedBox(width: 5,),
                  ElevatedButton(onPressed: (){


                    String first = ctrll.text;
                    ctrll.text = first.substring(0,first.length-1);
                    num1=ctrll.text;



                  }, style: ElevatedButton.styleFrom(fixedSize: const Size(45, 45),primary: Colors.redAccent),


                    child: Text("D",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),
                    ),
                  ),
                  SizedBox(width: 5,),
                  ElevatedButton(onPressed: (){
                    ctrll.text = "%";
                    optr = "%";
                    clk =true;





                  }, style: ElevatedButton.styleFrom(fixedSize: const Size(45, 45),primary: Colors.black),
                    child: Text("%",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 25),
                    ),
                  ),
                  SizedBox(width: 5,),
                  ElevatedButton(onPressed: (){
                    ctrll.text = "√";
                    optr = "√";
                    clk =true;





                  }, style: ElevatedButton.styleFrom(fixedSize: const Size(45, 45),primary: Colors.black),
                    child: Text("√",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 25),
                    ),
                  ),
                  SizedBox(width: 5,),
                  ElevatedButton(onPressed: (){
                    ctrll.text = "^";
                    optr = "^";
                    clk =true;





                  }, style: ElevatedButton.styleFrom(fixedSize: const Size(45, 45),primary: Colors.black),
                    child: Text("^",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 25),
                    ),
                  ),

                ],
              ),
            ),
               SizedBox(height: 5,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               ElevatedButton(
                   onPressed: ()
                   {
                     if(clk)
                       {
                         num2+= "1";
                         ctrll.text = num2;
                       }
                     else
                       {
                         num1+= "1";
                         ctrll.text = num1;
                       }


                   },
                   style: ElevatedButton.styleFrom(fixedSize: const Size(65, 45),primary: Colors.black),
                   child: Text("1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
               ElevatedButton(onPressed: (){
                 if(clk)
                 {
                   num2+= "2";
                   ctrll.text = num2;
                 }
                 else
                 {
                   num1+= "2";
                   ctrll.text = num1;
                 }
               },
                   style: ElevatedButton.styleFrom(fixedSize: const Size(65, 45),primary: Colors.black),
                   child: Text("2",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
               ElevatedButton(onPressed: (){
                 if(clk)
                 {
                   num2+= "3";
                   ctrll.text = num2;
                 }
                 else
                 {
                   num1+= "3";
                   ctrll.text = num1;
                 }
               },
                   style: ElevatedButton.styleFrom(fixedSize: const Size(65, 45),primary: Colors.black),
                   child: Text("3",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),

               ElevatedButton(onPressed: (){

                 ctrll.text= "+";
                 optr= "+";
                 clk = true;





               },
                   style: ElevatedButton.styleFrom(fixedSize: const Size(65, 45),primary: Colors.black),
                   child: Text("+",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 25),)),


             ],
           ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: ()
                    {
                      if(clk)
                      {
                        num2+= "4";
                        ctrll.text = num2;
                      }
                      else
                      {
                        num1+= "4";
                        ctrll.text = num1;
                      }

                    },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(65, 45),primary: Colors.black),
                    child: Text("4",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
                ElevatedButton(onPressed: (){
                  if(clk)
                  {
                    num2+= "5";
                    ctrll.text = num2;
                  }
                  else
                  {
                    num1+= "5";
                    ctrll.text = num1;
                  }
                },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(65, 45),primary: Colors.black),
                    child: Text("5",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
                ElevatedButton(onPressed: (){
                  if(clk)
                  {
                    num2+= "6";
                    ctrll.text = num2;
                  }
                  else
                  {
                    num1+= "6";
                    ctrll.text = num1;
                  }
                },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(65, 45),primary: Colors.black),
                    child: Text("6",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),

                ElevatedButton(onPressed: (){

                  ctrll.text= "/";
                  optr= "/";
                  clk = true;





                },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(65, 45),primary: Colors.black),
                    child: Text("/",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 25),)),


              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: ()
                    {
                      if(clk)
                      {
                        num2+= "7";
                        ctrll.text = num2;
                      }
                      else
                      {
                        num1+= "7";
                        ctrll.text = num1;
                      }

                    },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(65, 45),primary: Colors.black),
                    child: Text("7",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
                ElevatedButton(onPressed: (){
                  if(clk)
                  {
                    num2+= "8";
                    ctrll.text = num2;
                  }
                  else
                  {
                    num1+= "8";
                    ctrll.text = num1;
                  }
                },  style: ElevatedButton.styleFrom(fixedSize: const Size(65, 45),primary:
                Colors.black),
                    child: Text("8",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
                ElevatedButton(onPressed: (){
                  if(clk)
                  {
                    num2+= "9";
                    ctrll.text = num2;
                  }
                  else
                  {
                    num1+= "9";
                    ctrll.text = num1;
                  }
                },

                    style: ElevatedButton.styleFrom(fixedSize: const Size(65, 45),primary:
                    Colors.black),
                    child: Text("9",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)
                ),

                ElevatedButton(onPressed: (){


                  ctrll.text= "-";
                  optr= "-";
                  clk = true;
                },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(65, 45),primary:
                    Colors.black),
                    child: Text("-",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 25),)),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){
                  if(clk)
                  {
                    num2+= ".";
                    ctrll.text = num2;
                  }
                  else
                  {
                    num1+= ".";
                    ctrll.text = num1;
                  }
                },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(65, 45),primary:
                    Colors.black),
                    child: Text(".",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)
                ),
                ElevatedButton(onPressed: (){
                  if(clk)
                  {
                    num2+= "0";
                    ctrll.text = num2;
                  }
                  else
                  {
                    num1+= "0";
                    ctrll.text = num1;
                  }
                },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(65, 45),primary:
                    Colors.black),
                    child: Text("0",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)
                ),

                ElevatedButton(onPressed: (){


                  ctrll.text= "*";
                  optr= "*";
                  clk = true;
                },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(65, 45),primary: Colors.black),

                    child: Center(child: Text("*",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 25),))
                ),
                ElevatedButton(onPressed: (){

                  if(optr == "+")


                  {
                    double a = double.parse(num1);
                    double b = double.parse(num2);
                    double res = a+b;
                    ctrll.text = res.toString();


                  }
                  if(optr == "-")

                  {
                    double a = double.parse(num1);
                    double b = double.parse(num2);
                    double res = a-b;
                    ctrll.text = res.toString();

                  }
                  if(optr == "/")

                  {
                    double a = double.parse(num1);
                    double b = double.parse(num2);
                    double res = a/b;
                    ctrll.text = res.toString();



                  }
                  if(optr == "*")

                  {
                    double a = double.parse(num1);
                    double b = double.parse(num2);
                    double res = a*b;
                    ctrll.text = res.toString();


                  }
                  if(optr == "%")

                  {
                    double a = double.parse(num1);
                    double b = double.parse(num2);
                    double res = (a*b)/100;
                    ctrll.text = res.toString();


                  }
                  if(optr=="^")
                  {
                    double a =double.parse(num1);
                    double b = double.parse(num2);
                    num res=pow(a, b);
                    ctrll.text = res.toString();
                  }
                  if(optr=="√")
                  {
                    double a=double.parse(num2);
                    double res=sqrt(a);
                    ctrll.text=res.toString();

                  }
                  num1 = ctrll.text;
                  num2 = "";
                  optr = "";
                  clk = false;




                },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(65, 45),primary: Colors.white70),
                    child: Center(child: Text("=",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 25),))),


              ],
            ),
            SizedBox(height: 20),
             Container(
               height: 300,
               width: 350,
               decoration: BoxDecoration(
                 image: DecorationImage(image: AssetImage("assets/img/cal.gif"),fit: BoxFit.fill)
               ),


             )

          ],
        ),
      ),
    );
  }
}
