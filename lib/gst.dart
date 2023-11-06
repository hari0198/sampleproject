import 'package:flutter/material.dart';
class gst extends StatefulWidget {
  const gst({super.key});

  @override
  State<gst> createState() => _gstState();
}

class _gstState extends State<gst> {
  TextEditingController a1=TextEditingController();
  TextEditingController a2=TextEditingController();
  TextEditingController a3=TextEditingController();
  TextEditingController a4=TextEditingController();
  TextEditingController a5=TextEditingController();
  TextEditingController a6=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey,
      appBar: AppBar(backgroundColor: Colors.black,
        title: Center(child: Text("Gst Calculator",style: TextStyle(color: Colors.redAccent),)),

      ),
      body:Column(children: [
        Row(
          children: [
            Text("Amount",style: TextStyle(fontSize: 20),),
          ],
        ),
        TextFormField(controller: a1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
        SizedBox(height: 10,),
        Row(
          children: [
            Text("Tax",style: TextStyle(fontSize: 20),),
          ],
        ),
        TextFormField(controller: a2,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
        SizedBox(height: 35,),
    Row(
      children: [
        Text("   Inclusive tax amount         Tax tax",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
      ],
    ),

    Padding(
            padding: const EdgeInsets.only(top: 5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             SizedBox(height: 50,width: 170,
                 child: TextFormField(controller: a3,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.redAccent,
               border: OutlineInputBorder(),
                   ),
                 ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
                 child: SizedBox(height: 50,width: 170,
                   child: TextFormField(controller: a5,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.redAccent,
                      border: OutlineInputBorder(),
              ),
              ),
              ),
              ),






      ],
    ),
    ),
        Row(
          children: [
            Text("   Exclusive tax amount         Tax amount",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 50,width: 170,
                child: TextFormField(controller: a4,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.redAccent,
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 50,width: 170,
                  child: TextFormField(controller: a6,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.redAccent,
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
              double c=(a*(100/(100+b)));
              a3.text=c.toString();
            });

          },
            child: Text("pre GST amount",style: TextStyle(fontSize: 20,color: Colors.white),),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green,fixedSize:Size(300, 40)),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: ()
          {
            setState(() {
              double a=double.parse(a1.text);
              double b=double.parse(a2.text);
              double c= a-(a*(100/(100+b)));
              a5.text=c.toString();

            });
          }, child: Text("included tax",style: TextStyle(fontSize: 20,color: Colors.white),),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green,fixedSize:Size(300, 40)),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: ()
          {
            setState(() {
              double a=double.parse(a1.text);
              double b=double.parse(a2.text);
              double c=a+(a*b/100);
              a4.text=c.toString();

            });


          }, child: Text("excluded tax amount",style: TextStyle(fontSize: 20,color: Colors.white),),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green,fixedSize:Size(300, 40)),),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: ()
          {
            setState(() {
              double a=double.parse(a1.text);
              double b=double.parse(a2.text);
              double c= a*b/100;
              a6.text=c.toString();
            });
          }, child: Text("excluded tax ",style: TextStyle(fontSize: 20,color: Colors.white),),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green,fixedSize:Size(300, 40)),),
        ),






















    ],
    ),



    );
  }
}
