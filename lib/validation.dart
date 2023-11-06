import 'package:flutter/material.dart';
import 'package:untitled/colors.dart';
import 'package:untitled/spotify.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FormScreen(),
  ));
}
class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:spbl,
      appBar: AppBar(backgroundColor: spbl,
        title: Text('Login(or)Register',style:TextStyle(color: Colors.white70),),
      ),
      body:


       Form(
          key: _formGlobalKey,

           child:Container(
    height: double.infinity,
    width: double.infinity,
   





          child:SingleChildScrollView(
            child: Column(
              children: [SizedBox(height: 300,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(filled: true,
                        fillColor: Colors.white,
                        labelText: 'email',border: OutlineInputBorder(),
                    ),
                    validator: (value) {

                    //   if(value == null || value.isEmpty )
                    //     {
                    //       return 'pls enter valid name';
                    //     }
                    // }
                   if (value==null ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return 'Enter a valid email!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(filled: true,
                      fillColor: Colors.white,
                        labelText: 'password',border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null ||value.length<7)
                      {
                        return 'Enter a valid password!';
                      }
                      return null;
                    },

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: (){

                    if(_formGlobalKey.currentState!.validate())
                    {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("valid ok")));
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const sliver()),
                      );
                    }

                  }, child: Text("Submit")),
                )









              ],


            ),
          ),
        ),
       ),
    );
  }



}