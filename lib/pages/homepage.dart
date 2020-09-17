
import 'package:flutter/material.dart';
import 'package:flutter_app_multipage/pages/add.dart';
import 'package:flutter_app_multipage/pages/counter.dart';
import 'package:flutter_app_multipage/pages/divide.dart';
import 'package:flutter_app_multipage/pages/multiply.dart';
import 'package:flutter_app_multipage/pages/subtract.dart';

class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Operations'),
        ),
        body: SizedBox.expand(
          child: Container(
            padding: EdgeInsets.only(left: 50),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xff00467F), Color(0xffA5CC82)], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Add())),
                      child: Container(
                        width:150,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          //color: Colors.blueAccent,
                          gradient: LinearGradient(colors: [Color.fromRGBO(221,94,137,1.0), Color.fromRGBO(247,187,151,1.0)]),
                          //Color(0xffhexcode) will also work
                        ),
                        child:Center(child: Text('ADD', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ))),
                      ),
                    ),

                    SizedBox(width: 10),

                    GestureDetector(
                      onTap: () => {Navigator.of(context).push(MaterialPageRoute(builder: (context) => Subtract()))},
                      child: Container(
                        width:150,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          //color: Colors.blueAccent,
                          gradient: LinearGradient(colors: [Color.fromRGBO(7,101,133,1.0), Color.fromRGBO(255,255,255,1.0)]),
                        ),
                        child:Center(child: Text('SUBTRACT', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ))),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10),

                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Multiply())),
                      child: Container(
                        width:150,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          //color: Colors.blueAccent,
                          gradient: LinearGradient(colors: [Color.fromRGBO(170,7,107,1.0), Color.fromRGBO(97,4,95,1.0)]),
                        ),
                        child:Center(child: Text('MULTIPLY', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ))),
                      ),
                    ),

                    SizedBox(width: 10),

                    GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Divide())),
                      child: Container(
                        width:150,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          //color: Colors.blueAccent,
                          gradient: LinearGradient(colors: [Color.fromRGBO(229,93,135,1.0), Color.fromRGBO(95,195,228,1.0)]),
                        ),
                        child:Center(child: Text('DIVIDE', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ))),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Counter())),
                      child: Container(
                        width: 150,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(colors: [Color(0xff3494E6), Color(0xffEC6EAD)]),
                        ),
                        child:Center(child: Text('COUNTER', style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),)),
                      ),
                    ),
                  ],
                )

              ],
            ),
          ),
        ),

      ),
    );
  }
}
