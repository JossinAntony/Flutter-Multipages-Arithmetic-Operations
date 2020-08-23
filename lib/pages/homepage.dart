
import 'package:flutter/material.dart';
import 'package:flutter_app_multipage/pages/add.dart';

class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Operations'),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 50),
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
                      ),
                      child:Center(child: Text('ADD', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ))),
                    ),
                  ),

                  SizedBox(width: 10),

                  Container(
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
                ],
              ),

              SizedBox(height: 10),

              Row(
                children: <Widget>[
                  Container(
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

                  SizedBox(width: 10),

                  Container(
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
                ],
              ),


            ],
          ),
        )
      ),
    );
  }
}
