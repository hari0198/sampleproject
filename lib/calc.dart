
import 'package:flutter/material.dart';


class cal extends StatefulWidget {
  const cal({super.key});

  @override
  State<cal> createState() => _calState();
}

class _calState extends State<cal> {

  final c=TextEditingController();
  final d=TextEditingController();
  final b=TextEditingController();


  List j = [];

  findMin() {
    return  j.reduce((first, next) => first < next ? first : next);
  }
  findmax() {
    return  j.reduce((current, next) => current > next ? current : next);

  }





     @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          TextFormField(
            controller: c,
            ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 81.0),
            child: ElevatedButton(
                onPressed: (){
                  setState(() {
                   j.add(c.text);
                  });



                },
                child:Column(
                  children:[
                    Text('ok'),
                  ],
                )),
          ),
           SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Container(
              height: 350,
              width: 250,
              decoration: BoxDecoration(
                border: Border.all()
              ),
              child:ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount:j.length ,
                  itemBuilder: (context ,index){
                    return Text(j[index]);
                  }
              ),



            ),

          ),




          SizedBox(height: 25,),
                 TextFormField(
                   controller: d,
                   decoration:InputDecoration(
                     border: OutlineInputBorder(),
                   ),
                 ),
          ElevatedButton(onPressed: (){


           d.text = findMin().toString();

          },
            child: Text("min"),
          ),
          SizedBox(height: 25,),

          TextFormField(
            controller: b,
            decoration:InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(onPressed: (){

            var  w = [1,2,3];

            var l = w.reduce((value, element) => value > element ? value : element);



            b.text = findmax().toString();



          },
            child: Text("max"),
          ),



        ],
      ),
    );
  }
}








// class asd extends StatefulWidget {
//   const asd({super.key});
//
//   @override
//   State<asd> createState() => _asdState();
// }
//
// class _asdState extends State<asd> {
//
//
//   final q =TextEditingController();
//   final ll =TextEditingController();
//
//   List<int> r = [];
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//
//         children: [
//           SizedBox(height: 50,),
//           TextFormField(
//             controller: q,
//           ),
//           SizedBox(height: 10,),
//           Padding(
//             padding: const EdgeInsets.only(left: 81.0),
//             child: ElevatedButton(
//                 onPressed: (){
//                   setState(() {
//                     r.add(int.parse(q.text));
//                   });
//
//
//
//                 },
//                 child:Column(
//                   children:[
//                     Text('ok'),
//                   ],
//                 )),
//           ),
//           SizedBox(height: 25,),
//           Padding(
//             padding: const EdgeInsets.only(left: 50.0),
//             child: Container(
//               height: 350,
//               width: 250,
//               decoration: BoxDecoration(
//                   border: Border.all()
//               ),
//               child:ListView.builder(
//                   scrollDirection: Axis.vertical,
//                   itemCount:r.length ,
//                   itemBuilder: (context ,index){
//                     return Text(r[index].toString());
//                   }
//               ),
//
//
//
//             ),
//           ),
//
//
//           ElevatedButton(onPressed: (){
//
//             var f = r.reduce((value, element) => value > element ? value : element);
//
//             ll.text = f.toString();
//
//           }, child: Text("kk")),
//
//           TextFormField(controller: ll,)
//         ],
//       ),
//     );
//   }
// }






