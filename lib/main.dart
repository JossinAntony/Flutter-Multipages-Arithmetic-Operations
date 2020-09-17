import 'package:flutter/material.dart';
import 'package:flutter_app_multipage/pages/add.dart';
import 'package:flutter_app_multipage/pages/divide.dart';
import 'package:flutter_app_multipage/pages/homepage.dart';
import 'package:flutter_app_multipage/pages/multiply.dart';
import 'package:flutter_app_multipage/pages/subtract.dart';
import 'package:flutter_app_multipage/pages/counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var pages = [Add(), Subtract(), Multiply(), Divide(), Counter(),];

  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('OPERATIONS'),
        ),
        body: pages[_pageIndex],
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 20,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          onTap: (int index){
            setState(() {
              _pageIndex = index;
            });
          },
          currentIndex: _pageIndex,

            items: [

              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle),
                title: Text('ADD'),
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.remove),
                title: Text('SUBTRACT'),
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.close),
                title: Text('MULTIPLY'),
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.timeline),
                title: Text('DIVIDE'),
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.control_point),
                title: Text('COUNTER'),
              ),
            ],
        ),
      ),
    );
  }
}
