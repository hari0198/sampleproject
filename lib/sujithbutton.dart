import 'package:flutter/material.dart';

class neww extends StatefulWidget {
  const neww({super.key});

  @override
  State<neww> createState() => _newwState();
}

class _newwState extends State<neww> { final t=TextEditingController();
@override

Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      child: Column(
        children: [
          TextFormField(controller:t,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: (){
                  t.text="1";
                },
                child:Column(
                  children: [
                    Text('1'),
                  ],
                )),
          )

        ],
      ),
    ),
  );
}
}