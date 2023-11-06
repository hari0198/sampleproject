import 'package:flutter/material.dart';

enum SingingCharacter { Male, Female }

class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  SingingCharacter? _character = SingingCharacter.Male;

  bool clk = false;
  final ab = TextEditingController();
  final cd = TextEditingController();
  final ef = TextEditingController();
  final gh = TextEditingController();
  final ij = TextEditingController();
  final kl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          title: Center(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/star.gif"), fit: BoxFit.fill),
              ),
              child: Center(
                  child: Text("BMI",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 35))),
            ),
          ),
        ),
        body: Column(children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/img/eat.gif")),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text("Age",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              SizedBox(
                width: 25,
              ),
              Container(
                width: 300,
                child: TextFormField(
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  controller: ab,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text("Height",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Container(
                width: 300,
                child: TextFormField(
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  controller: cd,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text("weight",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Container(
                width: 300,
                child: TextFormField(
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  controller: ef,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(children: [
            Text("Result",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            SizedBox(width: 8),
            Container(
              width: 300,
              child: TextFormField(
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                controller: gh,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.green,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ]),
          Row(
            children: [
              Container(
                width: 150,
                child: ListTile(
                  title: Text("Male"),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.Male,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
              ),
              Container(
                width: 150,
                child: ListTile(
                  title: Text("Female"),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.Female,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 70,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double a = double.parse(cd.text);
                      double b = double.parse(ef.text);
                      double c = ((b*100*100) / (a*a));
                      gh.text = c.toString();
                      if (c <= 18.5) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                    "Your are Too Thin \n You BMI is: ${c.toStringAsFixed(2)}"),
                                backgroundColor: Colors.blue,
                              );
                            });
                      } else if ((18.6 <= c) & (c <= 25)) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                    "Your are Normal \n You BMI is: ${c.toStringAsFixed(2)}"),
                                backgroundColor: Colors.redAccent,
                              );
                            });
                      }
                      else if ((25.1 <= c) & (c <= 39.9))

                      {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                    "Your are Over Weight \n You BMI is:${c.toStringAsFixed(2)}"),
                                backgroundColor: Colors.redAccent,
                              );
                            });
                      }
                      else

                      {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                    "Your are Too obese \n You BMI is:${c.toStringAsFixed(2)}"),
                                backgroundColor: Colors.redAccent,
                              );
                            });
                      }
                    });
                  },
                  child: Text("Calculate")),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    ab.clear();
                    cd.clear();
                    ef.clear();
                    gh.clear();
                  },
                  child: Text("Clear"))
            ],
          ),
        ]));
  }
}
