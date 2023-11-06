import 'package:flutter/material.dart';

class elevated extends StatefulWidget {
  const elevated({super.key});


  @override
  State<elevated> createState() => _elevatedState();



}
class _elevatedState extends State<elevated> {
  final a=TextEditingController();
  final b=TextEditingController();
  final c=TextEditingController();
  final d=TextEditingController();
  List<int> l = [];






  int findMin() {
    return  l.reduce(
            (first, next) => first < next ? first : next);
  }
  int findmax() {
    return  l.reduce(
            (current, next) => current > next ? current : next);

  }

   lll()
  {
    l=[];
    return l.sort();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: a,
              decoration: InputDecoration(border: OutlineInputBorder()),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              setState(() {
                l.add(int.parse(a.text));
              }
              );
            },
                child: Text('ok')
            ),
          ),
          Container(
            height: 300,
            width: 350,
            decoration: BoxDecoration(border: Border.all()),

            child:ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount:l.length ,
                itemBuilder: (context ,index){
                  return Text(l[index].toString());
                }
            ),
          ),
          SizedBox(height: 10,),
          TextFormField(
            controller: b,
            decoration: InputDecoration(
              border: OutlineInputBorder(),


            ),
          ),
          ElevatedButton(onPressed: () {
            findMin();

            b.text = findMin().toString();
          },
              child: Text('min')
          ),
          SizedBox(height: 10,),
          TextFormField(
            controller: c,
            decoration: InputDecoration(
              border: OutlineInputBorder(),


            ),
          ),
          ElevatedButton(onPressed: () {
            findmax();


            c.text = findmax().toString();
          }, child: Text('max')
          ),


          SizedBox(height: 10,),
          TextFormField(
            controller: d,
            decoration: InputDecoration(
              border: OutlineInputBorder(),


            ),
          ),

          ElevatedButton(onPressed: () {

            var ss = [1,5,2];

            ss.sort();

            d.text = ss.toString();










          },

              child: Text('sort')
          ),






        ],
      ),
    );
  }
}
