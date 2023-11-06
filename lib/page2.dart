import 'package:flutter/material.dart';
import 'package:untitled/page2.1.dart';
import 'package:untitled/page2.2.dart';
class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {

  int _index = 0 ;


  final pages = [
    page3(),
    page4(),

  ];

  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [



          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
        ],
        currentIndex: _index,
        onTap: tap,
      ) ,
    );
  }
}
