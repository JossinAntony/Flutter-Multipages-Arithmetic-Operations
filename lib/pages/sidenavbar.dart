import 'package:flutter/material.dart';
import 'package:flutter_app_multipage/pages/add.dart';
import 'package:flutter_app_multipage/pages/counter.dart';
import 'package:flutter_app_multipage/pages/multiply.dart';
import 'package:flutter_app_multipage/pages/subtract.dart';
import 'package:flutter_app_multipage/pages/divide.dart';

class SideNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: Text('J'),
            ),
              accountName: Text('J'),
              accountEmail: Text('j@gmail.com')
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Add()));
            },
            child: ListTile(
              leading: Icon(Icons.add),
              title: Text('ADD'),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Subtract()));
            },
            child: ListTile(
              leading: Icon(Icons.remove),
              title: Text('SUBTRACT'),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Multiply()));
            },
            child: ListTile(
              leading: Icon(Icons.close),
              title: Text('MULTIPLY'),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Divide()));
            },
            child: ListTile(
              leading: Icon(Icons.timeline),
              title: Text('DIVIDE'),
            ),
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Counter()));
            },
            child: ListTile(
              leading: Icon(Icons.control_point),
              title: Text('COUNTER'),
            ),
          ),
        ],
      ),
    );
  }
}
